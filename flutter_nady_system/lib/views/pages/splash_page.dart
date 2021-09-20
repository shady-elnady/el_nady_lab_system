import 'package:flutter/material.dart';
import 'package:flutter_nady_system/app/index.dart';

import 'package:flutter_nady_system/utils/fade_animation.dart';
import 'package:get/get.dart';
import 'widgets/animated_button.dart';

class SplashPage extends GetWidget<AppController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        //width: controller.width,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Stack(
          children: <Widget>[
            //Theme Icon
            Positioned(
              top: 5,
              right: 5,
              child: IconButton(
                icon: Obx(
                  () => Icon(
                    controller.darkTheme ? Icons.tungsten : Icons.light,
                    //color: Colors.red,
                  ),
                ),
                onPressed: () {
                  controller.changeTheme();
                },
              ),
            ),
            //
            // Positioned(
            //   top: -50,
            //   left: 0,
            //   child: FadeAnimation(
            //     child: Container(
            //       //width: controller.width,
            //       height: 400,
            //       decoration: boxImage(),
            //     ),
            //   ),
            // ),
            // //
            // Positioned(
            //   top: -100,
            //   left: 0,
            //   child: FadeAnimation(
            //     delay: 1.3,
            //     child: Container(
            //       //width: controller.width,
            //       height: 400,
            //       decoration: boxImage(),
            //     ),
            //   ),
            // ),
            // //
            // Positioned(
            //   top: -150,
            //   left: 0,
            //   child: FadeAnimation(
            //     delay: 1.6,
            //     child: Container(
            //       //width: controller.width,
            //       height: 400,
            //       decoration: boxImage(),
            //     ),
            //   ),
            // ),
            // //
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  FadeAnimation(
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        //color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  FadeAnimation(
                    delay: 1.3,
                    child: Text(
                      "We promis that you'll have the most \nfuss-free time with us ever.",
                      style: TextStyle(
                        //color: Colors.white.withOpacity(.7),
                        height: 1.4,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                  ),
                  FadeAnimation(
                    delay: 1.6,
                    child: AnimatedButton(),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

BoxDecoration boxImage({
  String image = 'assets/images/one.png',
}) =>
    BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    );
