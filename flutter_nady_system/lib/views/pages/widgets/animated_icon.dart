import 'package:flutter/material.dart';

class AnimatLanguage extends StatefulWidget {
  final Function? fun;
  const AnimatLanguage({
    Key? key,
    this.fun,
  }) : super(key: key);

  @override
  State<AnimatLanguage> createState() => _AnimatLanguageState();
}

class _AnimatLanguageState extends State<AnimatLanguage>
    with SingleTickerProviderStateMixin {
  late AnimationController iconController;
  bool isAnimated = false;
  @override
  void initState() {
    super.initState();
    iconController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    iconController.forward().then((value) async {
      await Future.delayed(const Duration(microseconds: 500));
      iconController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          animateIcon();
        },
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: iconController,
          size: 50,
          color: Colors.green,
        ),
      ),
    );
  }

  void animateIcon() {
    setState(() {
      isAnimated = !isAnimated;
      isAnimated ? iconController.forward() : iconController.reverse();
    });
  }

  @override
  void dispose() {
    iconController.dispose();
    super.dispose();
  }
}
