import 'package:flutter/material.dart';
import 'package:flutter_nady_system/routes/app_pages.dart';
import 'package:get/get.dart';

class AnimatedButton extends StatefulWidget {
  final String? routeName;
  const AnimatedButton({
    Key? key,
    this.routeName,
  }) : super(key: key);

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late AnimationController _scale2Controller;
  late AnimationController _widthController;
  late AnimationController _positionController;

  late Animation<double> _scaleAnimation;
  late Animation<double> _scale2Animation;
  late Animation<double> _widthAnimation;
  late Animation<double> _positionAnimation;

  bool hideIcon = false;
  //
  @override
  void initState() {
    super.initState();

    _scaleController = _controller(time: 400);
    _widthController = _controller(time: 600);
    _positionController = _controller(time: 1000);
    _scale2Controller = _controller();

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _widthController.forward();
            }
          });

    _widthAnimation =
        Tween<double>(begin: 80.0, end: 300.0).animate(_widthController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _positionController.forward();
            }
          });

    _positionAnimation =
        Tween<double>(begin: 0.0, end: 215.0).animate(_positionController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                hideIcon = true;
              });
              _scale2Controller.forward();
            }
          });

    _scale2Animation =
        Tween<double>(begin: 1.0, end: 32.0).animate(_scale2Controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Get.offNamed(Routes.homePage);
            }
          });
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _scale2Controller.dispose();
    _widthController.dispose();
    _positionController.dispose();
    super.dispose();
  }

  //
  AnimationController _controller({int time = 300}) => AnimationController(
        vsync: this,
        duration: Duration(milliseconds: time),
      );
  //
  Future<void> _playAnimation() async {
    try {
      await _scaleController.forward().orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because it was disposed of
    }
  }

  //
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleController,
      builder: (context, child) => Transform.scale(
        scale: _scaleAnimation.value,
        child: Center(
          child: AnimatedBuilder(
            animation: _widthController,
            builder: (context, child) => Container(
              width: _widthAnimation.value,
              height: 80,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Theme.of(context).primaryColor,
              ),
              child: InkWell(
                onTap: () {
                  _playAnimation();
                },
                child: Stack(
                  children: <Widget>[
                    AnimatedBuilder(
                      animation: _positionController,
                      builder: (context, child) => Positioned(
                        left: _positionAnimation.value,
                        child: AnimatedBuilder(
                          animation: _scale2Controller,
                          builder: (context, child) => Transform.scale(
                            scale: _scale2Animation.value,
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Colors.blue,
                                color: Theme.of(context).primaryColor,
                              ),
                              child: hideIcon == false
                                  ? const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    )
                                  : Container(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}