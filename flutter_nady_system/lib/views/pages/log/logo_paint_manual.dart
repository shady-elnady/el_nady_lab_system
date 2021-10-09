import 'package:flutter/material.dart';

class LogoPaint extends StatelessWidget {
  const LogoPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          width: 450,
          decoration: BoxDecoration(
            color: Colors.lightBlue.shade100,
            border: Border.all(
              color: Colors.red,
              width: 2,
            ),
          ),
          child: GestureDetector(
            onTapDown: (TapDownDetails info) {
              // ignore: avoid_print
              print("${info.localPosition}");
            },
            child: Stack(
              alignment: Alignment.topLeft,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 400,
                      height: 400,
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/micro3.png",
                        width: 350,
                        height: 350,
                        fit: BoxFit.fill,
                      ),
                    ),
                    CustomPaint(
                      painter: LogoPainter(),
                      size: const Size(400, 400),
                      // isComplex: true,
                    ),
                  ],
                ),
                // CustomPaint(painter: LogoPainter(), size: const Size(360, 360)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.green;
    Path logo = Path();
    // Start Part One
    logo.moveTo(103, 289);
    logo.arcToPoint(
      const Offset(89, 157),
      radius: const Radius.circular(120),
    );
    logo.arcToPoint(
      const Offset(153, 91),
      radius: const Radius.circular(53),
      largeArc: true,
    );
    logo.arcToPoint(
      const Offset(214, 77),
      radius: const Radius.circular(80),
    );
    logo.quadraticBezierTo(205, 100, 199, 100);
    logo.quadraticBezierTo(180, 170, 145, 166);
    logo.quadraticBezierTo(140, 180, 148, 197);
    logo.quadraticBezierTo(120, 190, 119, 222); //
    logo.lineTo(170, 255);
    logo.quadraticBezierTo(80, 250, 106, 292); //

    // End Part One

    // Start Part Two
    logo.moveTo(294, 305);
    logo.quadraticBezierTo(390, 180, 269, 94);
    logo.lineTo(259, 112);
    logo.quadraticBezierTo(280, 130, 272, 156);
    logo.quadraticBezierTo(300, 200, 266, 266);
    // End Part Two

    canvas.drawPath(logo, paint);
    // Small Cicule
    canvas.drawCircle(const Offset(329, 330), 20, paint);

    // Microscope
    Paint paintBlue = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.lightBlue;
    final microBlue = Path();

    microBlue.moveTo(241, 122);
    microBlue.lineTo(217, 114);
    microBlue.lineTo(197, 170);
    microBlue.lineTo(177, 162);
    microBlue.lineTo(167, 173);
    microBlue.quadraticBezierTo(170, 200, 210, 208);

    microBlue.lineTo(215, 195);
    microBlue.lineTo(184, 168);
    microBlue.lineTo(188, 165);
    microBlue.lineTo(230, 179);
    microBlue.lineTo(234, 170);
    microBlue.quadraticBezierTo(255, 210, 230, 246);
    microBlue.lineTo(190, 223);
    microBlue.lineTo(142, 212);
    microBlue.lineTo(178, 234);
    microBlue.lineTo(222, 242);
    microBlue.quadraticBezierTo(250, 255, 215, 252);
    microBlue.lineTo(209, 302);
    microBlue.lineTo(182, 275);
    microBlue.lineTo(191, 252);
    microBlue.quadraticBezierTo(190, 270, 120, 278);
    microBlue.lineTo(163, 329);
    microBlue.lineTo(289, 316);
    microBlue.lineTo(250, 266);
    microBlue.lineTo(241, 278);
    microBlue.quadraticBezierTo(290, 220, 257, 150);
    microBlue.arcToPoint(
      const Offset(241, 122),
      radius: const Radius.circular(18),
      largeArc: true,
      clockwise: true,
    );

    canvas.drawPath(microBlue, paintBlue);
    //MicroScope Blue Circle
    canvas.drawCircle(const Offset(249, 136), 15, paintBlue);
    // MicroScope Lines
    Paint paintMicro = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.red
      ..strokeWidth = 4;
    Path micro = Path();
    micro.moveTo(241, 122);
    micro.lineTo(208, 110);
    micro.lineTo(188, 165);
    micro.lineTo(177, 162);
    micro.lineTo(167, 173);
    micro.quadraticBezierTo(170, 200, 210, 208);

    micro.lineTo(218, 198); //
    micro.lineTo(184, 168);
    micro.lineTo(188, 165);
    micro.lineTo(230, 179);
    micro.lineTo(234, 170);
    micro.quadraticBezierTo(255, 210, 230, 246);
    micro.lineTo(190, 223);
    micro.lineTo(142, 212);
    micro.lineTo(178, 234);
    micro.lineTo(222, 242);
    micro.quadraticBezierTo(250, 255, 215, 252);
    micro.lineTo(209, 302);
    micro.lineTo(182, 275);
    micro.lineTo(191, 252);
    micro.quadraticBezierTo(190, 270, 121, 275);
    micro.quadraticBezierTo(120, 270, 115, 289);
    micro.lineTo(159, 341);
    micro.lineTo(287, 329); // to
    micro.lineTo(289, 315); // to
    micro.lineTo(251, 266);
    micro.lineTo(241, 278);
    micro.quadraticBezierTo(290, 220, 257, 150);
    micro.arcToPoint(
      const Offset(241, 122),
      radius: const Radius.circular(18),
      largeArc: true,
      clockwise: true,
    );
    micro.lineTo(241, 122);
    micro.lineTo(259, 82);
    micro.lineTo(231, 71);
    micro.lineTo(213, 112);
    micro.moveTo(211, 304);
    micro.lineTo(253, 298);
    micro.lineTo(230, 255);
    micro.lineTo(175, 244);
    micro.lineTo(130, 215);
    micro.quadraticBezierTo(125, 210, 147, 212);
    micro.moveTo(217, 240);
    micro.quadraticBezierTo(240, 205, 229, 181);
    micro.moveTo(210, 190);
    micro.lineTo(216, 177);

    canvas.drawPath(micro, paintMicro);

    //MicroScope Lines Circle
    canvas.drawCircle(const Offset(249, 136), 15, paintMicro);

    // Glass
    Paint paintglass = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.white;
    Paint paintglassLines = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.black
      ..strokeWidth = 2;
    Path glass = Path();
    //1
    glass.moveTo(194, 194);
    glass.lineTo(172, 209);
    glass.arcToPoint(
      const Offset(165, 201),
      radius: const Radius.circular(18),
    );
    glass.lineTo(182, 180);
    glass.arcToPoint(
      const Offset(194, 194),
      radius: const Radius.circular(25),
      clockwise: true,
    );
    //2
    glass.moveTo(171, 188);
    glass.lineTo(156, 192);
    glass.arcToPoint(
      const Offset(153, 181),
      radius: const Radius.circular(18),
    );
    glass.lineTo(168, 176);
    glass.arcToPoint(
      const Offset(171, 188),
      radius: const Radius.circular(25),
      clockwise: true,
    );
    //3
    glass.moveTo(208, 206);
    glass.lineTo(198, 219);
    glass.arcToPoint(
      const Offset(188, 215),
      radius: const Radius.circular(18),
    );
    glass.lineTo(190, 204);
    glass.arcToPoint(
      const Offset(208, 206),
      radius: const Radius.circular(5),
      largeArc: true,
      clockwise: true,
    );

    canvas.drawPath(glass, paintglass);
    canvas.drawPath(glass, paintglassLines);

    // // Big Circle
    // final bigCircle = Paint()
    //   ..style = PaintingStyle.stroke
    //   ..color = Colors.red
    //   ..strokeWidth = 50;

    // canvas.drawCircle(const Offset(180, 184), 165, bigCircle);
    // // end
    // // Big Circle
    // final blackCircle = Paint()
    //   ..style = PaintingStyle.stroke
    //   ..color = Colors.black
    //   ..strokeWidth = 3;

    // canvas.drawCircle(const Offset(180, 184), 190, blackCircle);
    // canvas.drawCircle(const Offset(180, 184), 140, blackCircle);
    // // end
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
