import 'package:flutter/material.dart';

class NeumorphicDesign extends StatefulWidget {
  final Color? color;
  final double bLevel;
  final Offset offsetW;
  final double? height1;
  final Offset offsetB;
  final double? width1;
  final IconData? iconData;
  final double? iconSize;
  final Function? fun;

  const NeumorphicDesign({
    Key? key,
    this.color,
    required this.offsetW,
    required this.bLevel,
    this.height1,
    this.width1,
    required this.offsetB,
    this.iconData,
    this.iconSize,
    this.fun,
  }) : super(key: key);
  @override
  _NeumorphicDesignState createState() => _NeumorphicDesignState();
}

class _NeumorphicDesignState extends State<NeumorphicDesign> {
  bool isPressed = false;

  void onPressedUp(PointerUpEvent event) {
    setState(() {
      isPressed = false;
    });
    widget.fun!();
  }

  void onPressedDown(PointerDownEvent event) {
    setState(() {
      isPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color mColor = widget.color ?? Theme.of(context).canvasColor;
    Color sColor = widget.color ?? Theme.of(context).cardColor;
    return Listener(
      onPointerUp: onPressedUp,
      onPointerDown: onPressedDown,
      child: isPressed
          ? Container(
              height: widget.height1,
              width: widget.width1,
              decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: const Offset(-3, -3),
                      color: mColor.withOpacity(.7),
                    ),
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: const Offset(3, 3),
                      color: sColor.withOpacity(.15),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: widget.color,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: widget.bLevel,
                              offset: widget.offsetW,
                              color:
                                  Theme.of(context).canvasColor.withOpacity(.7),
                            ),
                            BoxShadow(
                              blurRadius: widget.bLevel,
                              offset: widget.offsetB,
                              color:
                                  Theme.of(context).cardColor.withOpacity(.25),
                            )
                          ]),
                      child: Icon(
                        widget.iconData,
                        size: widget.iconSize,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Container(
              height: widget.height1,
              width: widget.width1,
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  color: mColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: const Offset(-3, -3),
                      color: mColor.withOpacity(.7),
                    ),
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: const Offset(3, 3),
                      color: sColor.withOpacity(.15),
                    )
                  ]),
              child: Icon(
                widget.iconData,
                color: Theme.of(context).hoverColor.withOpacity(.5),
                size: 30.0,
              ),
            ),
    );
  }
}
