import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_nady_system/app/controllers/app_controller.dart';
import '../utils/index.dart';

class LogoContainer extends GetWidget<AppController> {
  final double? width;
  const LogoContainer({
    this.width = 350,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: width,
      decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                offset: const Offset(-3, -3),
                blurRadius: 1.0,
                color: Theme.of(context).primaryColor.withOpacity(.4)),
            BoxShadow(
                offset: const Offset(3, 3),
                blurRadius: 1.0,
                color: Theme.of(context).cardColor.withOpacity(.15))
          ]),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).canvasColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(-2, -2),
                      blurRadius: 1.0,
                      color: Theme.of(context).cardColor.withOpacity(.3)),
                  BoxShadow(
                      offset: const Offset(2, 2),
                      blurRadius: 1.0,
                      color: Theme.of(context).canvasColor.withOpacity(.7)),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).canvasColor,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(-2, -2),
                              blurRadius: 1.0,
                              color:
                                  Theme.of(context).cardColor.withOpacity(.3)),
                          BoxShadow(
                              offset: const Offset(2, 2),
                              blurRadius: 1.0,
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(.7)),
                        ]),
                    child: Center(
                      child: logoSVG(
                        svg: controller.logo,
                        width: width! / 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
