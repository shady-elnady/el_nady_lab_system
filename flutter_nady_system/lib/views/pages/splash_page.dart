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
      body: SafeArea(
        child: Directionality(
          textDirection: controller.locale == arabic
              ? TextDirection.rtl
              : TextDirection.ltr,
          child: Container(
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
                        color: Theme.of(context).primaryColor,
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

                //  Column => Logo + AnimatedButton
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // El Nady Lab Text
                    FadeAnimation(
                      child: LocaleKeys.nadyLab.translation(
                        style: TextStyle(
                          fontSize: 35,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),

                    // Shady Text
                    FadeAnimation(
                      child: LocaleKeys.shady.translation(
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                      ),
                    ),

                    // Logo Container
                    FadeAnimation(
                      delay: 2,
                      child: Container(
                        height: 350,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(-3, -3),
                                  blurRadius: 3.0,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surface
                                      .withOpacity(.7)),
                              BoxShadow(
                                  offset: const Offset(3, 3),
                                  blurRadius: 3.0,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground
                                      .withOpacity(.15))
                            ]),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.background,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        offset: const Offset(-2, -2),
                                        blurRadius: 2.0,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground
                                            .withOpacity(.3)),
                                    BoxShadow(
                                        offset: const Offset(2, 2),
                                        blurRadius: 2.0,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface
                                            .withOpacity(.7)),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface,
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                                offset: const Offset(-2, -2),
                                                blurRadius: 2.0,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onBackground
                                                    .withOpacity(.3)),
                                            BoxShadow(
                                                offset: const Offset(2, 2),
                                                blurRadius: 2.0,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .surface
                                                    .withOpacity(.7)),
                                          ]),
                                      child: Center(
                                        child: logoSVG(
                                          svg: controller.logo,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Animated Button
                    const FadeAnimation(
                      delay: 3,
                      child: AnimatedButton(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
