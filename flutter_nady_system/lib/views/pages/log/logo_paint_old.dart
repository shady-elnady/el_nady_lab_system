import 'package:flutter/material.dart';

class LogoPaintOld extends StatelessWidget {
  const LogoPaintOld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          width: 400,
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
                  children: [
                    Image.asset(
                      "assets/logs/log.jpeg",
                      width: 400,
                      height: 400,
                      fit: BoxFit.fill,
                    ),
                    CustomPaint(
                      painter: LogoPainter(),
                      size: const Size(360, 360),
                      // isComplex: true,
                    ),
                    Text(
                      "Width : ${size.width}- \n Height : ${size.height}",
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.red,
                      ),
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
    logo.moveTo(129, 250);
    logo.arcToPoint(
      const Offset(108, 150),
      radius: const Radius.circular(85),
    );
    logo.arcToPoint(
      const Offset(150, 110),
      radius: const Radius.circular(35),
      largeArc: true,
    );
    logo.arcToPoint(
      const Offset(190, 100),
      radius: const Radius.circular(85),
    );
    logo.lineTo(180, 115);
    logo.lineTo(178, 117);
    logo.lineTo(166, 150);
    logo.lineTo(144, 161);
    logo.lineTo(145, 180);
    logo.lineTo(135, 182);
    logo.lineTo(131, 196);
    logo.lineTo(160, 220);
    logo.lineTo(121, 230);
    logo.arcToPoint(
      const Offset(129, 250),
      radius: const Radius.circular(85),
      clockwise: true,
    );
    // End Part One

    // Start Part Two
    logo.moveTo(225, 108);
    logo.quadraticBezierTo(310, 170, 240, 255);
    logo.lineTo(224, 229);
    logo.quadraticBezierTo(250, 160, 230, 150);
    logo.quadraticBezierTo(240, 130, 218, 122);
    // End Part Two

    canvas.drawPath(logo, paint);
    // Small Cicule
    canvas.drawCircle(const Offset(260, 265), 16, paint);

    // Microscope
    Paint paintMicro = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.lightBlue;

    final micro = Path();
    micro.moveTo(204, 90);
    micro.lineTo(188, 122);
    micro.lineTo(184, 120);
    micro.lineTo(170, 154);
    micro.lineTo(150, 165);
    micro.lineTo(150, 178);
    micro.lineTo(166, 178);
    micro.lineTo(160, 185);
    micro.lineTo(167, 189);
    micro.lineTo(177, 184);
    micro.lineTo(174, 193);
    micro.lineTo(181, 197);
    micro.lineTo(192, 191);
    micro.lineTo(196, 184);
    micro.lineTo(192, 180);
    micro.lineTo(197, 168);
    micro.quadraticBezierTo(210, 150, 200, 210);
    micro.lineTo(140, 187);
    micro.lineTo(136, 196);
    micro.lineTo(168, 220);

    micro.lineTo(166, 227);
    micro.lineTo(128, 233);
    micro.lineTo(146, 270);
    micro.lineTo(240, 268);
    micro.lineTo(217, 225);
    micro.quadraticBezierTo(240, 180, 221, 151);
    micro.quadraticBezierTo(230, 130, 210, 126);
    micro.lineTo(221, 100);
    micro.lineTo(204, 90);

    canvas.drawPath(micro, paintMicro);
    //End MicroScope
    // Microscope
    paintMicro = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.black
      ..strokeWidth = 2;

    micro.moveTo(204, 90);
    micro.lineTo(188, 122);
    micro.lineTo(184, 120);
    micro.lineTo(170, 154);
    micro.lineTo(150, 165);
    micro.lineTo(150, 178);
    micro.lineTo(166, 178);
    micro.lineTo(160, 185);
    micro.lineTo(167, 189);
    micro.lineTo(177, 184);
    micro.lineTo(174, 193);
    micro.lineTo(181, 197);
    micro.lineTo(192, 191);
    micro.lineTo(196, 184);
    micro.lineTo(192, 180);
    micro.lineTo(197, 168);
    micro.quadraticBezierTo(210, 150, 200, 210);
    micro.lineTo(140, 187);
    micro.lineTo(136, 196);
    micro.lineTo(168, 220);

    micro.lineTo(166, 227);
    micro.lineTo(128, 233);
    micro.lineTo(146, 270);
    micro.lineTo(240, 268);
    micro.lineTo(217, 225);
    micro.quadraticBezierTo(240, 180, 221, 151);
    micro.quadraticBezierTo(230, 130, 210, 126);
    micro.lineTo(221, 100);
    micro.lineTo(204, 90);
    micro.close();

    canvas.drawPath(micro, paintMicro);
    // Big Circle
    final bigCircle = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.red
      ..strokeWidth = 50;

    canvas.drawCircle(const Offset(180, 184), 165, bigCircle);
    // end
    // Big Circle
    final blackCircle = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.black
      ..strokeWidth = 3;

    canvas.drawCircle(const Offset(180, 184), 190, blackCircle);
    canvas.drawCircle(const Offset(180, 184), 140, blackCircle);
    // end
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
