import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:get/get.dart';

import '../../app/index.dart';
import 'components/logo_container.dart';
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
                // Change Theme Icon
                Positioned(
                  top: 5,
                  right: 5,
                  child: NeumorphicDesign(
                    height1: 55,
                    width1: 55,
                    color: Theme.of(context).canvasColor,
                    offsetB: const Offset(-2, -2),
                    offsetW: const Offset(2, 2),
                    bLevel: 5.0,
                    iconData: controller.darkTheme
                        ? FontAwesome.lightbulb
                        : Icons.light,
                    iconSize: 30.0,
                    fun: () {
                      controller.changeTheme();
                    },
                  ),
                ),

                // Change Languages Icon
                const Positioned(
                  top: 5,
                  left: 5,
                  child: LanguageMenu(),
                ),
                //

                //  Text
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
                    const FadeAnimation(
                      delay: 2,
                      child: LogoContainer(),
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
