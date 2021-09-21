import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/index.dart';
import 'utils/index.dart';
import 'widgets/index.dart';

class SplashPage extends GetWidget<AppController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Stack(
          children: <Widget>[
            // Theme Icon
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

            // Languages Icon
            const Positioned(
              top: 5,
              left: 5,
              child: LanguageMenu(),
            ),
            //

            //
            Positioned(
              left: 0,
              right: 0,
              top: controller.height / 2 - 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 350,
                    width: 350,
                    decoration: BoxDecoration(
                        color: const Color(0xFFe6ebf2),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(-3, -3),
                              blurRadius: 3.0,
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              offset: const Offset(3, 3),
                              blurRadius: 3.0,
                              color: Colors.black.withOpacity(.15))
                        ]),
                    child: Container(
                      width: 220,
                      height: 220,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFe6ebf2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFe6ebf2),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(-2, -2),
                                    blurRadius: 2.0,
                                    color: Colors.black.withOpacity(.3)),
                                BoxShadow(
                                    offset: const Offset(2, 2),
                                    blurRadius: 2.0,
                                    color: Colors.white.withOpacity(.7)),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xFFe6ebf2),
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            offset: const Offset(-2, -2),
                                            blurRadius: 2.0,
                                            color:
                                                Colors.black.withOpacity(.3)),
                                        BoxShadow(
                                            offset: const Offset(2, 2),
                                            blurRadius: 2.0,
                                            color:
                                                Colors.white.withOpacity(.7)),
                                      ]),
                                  child: Center(
                                    child: logoSVG(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const FadeAnimation(
                    delay: 1.6,
                    child: AnimatedButton(),
                  ),
                  FadeAnimation(
                    child: LocaleKeys.wellcome.translation(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            //
          ],
        ),
      ),
    );
  }
}
