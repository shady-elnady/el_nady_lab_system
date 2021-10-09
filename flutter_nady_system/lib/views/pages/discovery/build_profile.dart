import 'package:flutter/material.dart';
import 'package:flutter_nady_system/app/index.dart';

class BuildProfile extends StatefulWidget {
  final UserModel user;
  const BuildProfile({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<BuildProfile> createState() => _BuildProfileState();
}

class _BuildProfileState extends State<BuildProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Row(
            children: [
              // BuildUser
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.user.name!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(widget.user.location!),
                  ],
                ),
              ),
              // Button
              _followButton(user: widget.user),
            ],
          )
        ],
      ),
    );
  }

  Widget _followButton({required UserModel user}) => GestureDetector(
        onTap: () {
          setState(() {
            user.isFollowing = !user.isFollowing;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(microseconds: 1000),
          curve: Curves.easeIn,
          height: 50,
          width: user.isFollowing ? 120 : 50,
          child: user.isFollowing ? buildFollow() : buildUnFollow(),
        ),
      );
}

Widget buildUnFollow() => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.teal,
      ),
      child: const Icon(
        Icons.people,
        color: Colors.white,
      ),
    );

Widget buildFollow() => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        border: Border.all(
          color: Colors.teal,
          width: 2.5,
        ),
      ),
      child: const FittedBox(
        child: Text(
          "Follow",
          style: TextStyle(
            fontSize: 15,
            color: Colors.tealAccent,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
