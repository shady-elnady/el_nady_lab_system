// ignore_for_file: avoid_print

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nady_system/app/index.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'build_profile.dart';
import 'item_widget.dart';

class DescoveryView extends StatefulWidget {
  const DescoveryView({Key? key}) : super(key: key);

  @override
  _DescoveryViewState createState() => _DescoveryViewState();
}

class _DescoveryViewState extends State<DescoveryView> {
  final PageController _pageController = PageController();
  final bool _pagingEnabled = true;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final panelController = PanelController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.person_outline),
          onPressed: () {
            print("shady");
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("shady ...");
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SlidingUpPanel(
        maxHeight: 400,
        minHeight: 150,
        controller: panelController,
        parallaxEnabled: true,
        parallaxOffset: 0.5,
        color: Colors.transparent,
        // PanelBuilder
        panelBuilder: (ScrollController scroll) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemWidget(
                      title: "Followers",
                      count: users[index].countFollowers!,
                    ),
                    ItemWidget(
                      title: "Postes",
                      count: users[index].countPosts!,
                    ),
                    ItemWidget(
                      title: "Following",
                      count: users[index].countFollowing!,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      BuildProfile(
                        user: users[index],
                      ),
                      buildProfileDetails(user: users[index]),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        //
        // Body
        body: PageView.builder(
          controller: PageController(initialPage: 0),
          physics: _pagingEnabled
              ? const PageScrollPhysics()
              : const NeverScrollableScrollPhysics(),

          //
          scrollBehavior:
              ScrollConfiguration.of(context).copyWith(dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          }),
          //
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              users[index].urlImage!,
              fit: BoxFit.fill,
            );
          },
          //
          onPageChanged: (int index) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
      // BottomNavigationBar
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.tealAccent,
        index: 0,
        items: const [
          Icon(Icons.map, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.people, size: 30),
        ],
      ),
    );
  }
}

buildProfileDetails({required UserModel user}) => Expanded(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.bio!,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Photos",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...user.urlPhotos!
                      .map(
                        (url) => Container(
                          padding: const EdgeInsets.only(right: 5),
                          width: 100,
                          height: 100,
                          child: Image.network(
                            url,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
