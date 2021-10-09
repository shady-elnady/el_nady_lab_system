import 'package:flutter/material.dart';
// import 'dart:ui' as ui;

class LogoPaint extends StatelessWidget {
  const LogoPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          width: 700,
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
                ListView(
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
                      size: Size(
                          600,
                          (600 * 1)
                              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter(),
                    )
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

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = Paint()
      ..color = const Color.fromARGB(255, 229, 229, 10)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5600000, size.height * 0.3566667);
    path_0.quadraticBezierTo(size.width * 0.5400750, size.height * 0.3469667,
        size.width * 0.5313000, size.height * 0.3410667);
    path_0.lineTo(size.width * 0.4928000, size.height * 0.4390667);
    path_0.quadraticBezierTo(size.width * 0.5490000, size.height * 0.4562667,
        size.width * 0.5677333, size.height * 0.4620000);
    path_0.cubicTo(
        size.width * 0.5924000,
        size.height * 0.5132333,
        size.width * 0.5730667,
        size.height * 0.5489667,
        size.width * 0.5548000,
        size.height * 0.5814333);
    path_0.quadraticBezierTo(size.width * 0.5344333, size.height * 0.5694083,
        size.width * 0.4728000, size.height * 0.5333333);
    path_0.lineTo(size.width * 0.3929000, size.height * 0.5174667);
    path_0.quadraticBezierTo(size.width * 0.4377250, size.height * 0.5513667,
        size.width * 0.4526667, size.height * 0.5626667);
    path_0.cubicTo(
        size.width * 0.4786667,
        size.height * 0.5711667,
        size.width * 0.5459000,
        size.height * 0.5808000,
        size.width * 0.5623000,
        size.height * 0.5962333);
    path_0.quadraticBezierTo(size.width * 0.5548000, size.height * 0.5970667,
        size.width * 0.5275333, size.height * 0.5930667);
    path_0.lineTo(size.width * 0.5140000, size.height * 0.6884333);
    path_0.lineTo(size.width * 0.4537333, size.height * 0.6200000);
    path_0.lineTo(size.width * 0.3491000, size.height * 0.6358667);
    path_0.lineTo(size.width * 0.4326333, size.height * 0.7396333);
    path_0.lineTo(size.width * 0.6539667, size.height * 0.7134667);
    path_0.quadraticBezierTo(size.width * 0.6052333, size.height * 0.6458000,
        size.width * 0.5900000, size.height * 0.6253333);
    path_0.cubicTo(
        size.width * 0.6354000,
        size.height * 0.5638000,
        size.width * 0.6385000,
        size.height * 0.4705667,
        size.width * 0.6038667,
        size.height * 0.4128000);
    path_0.cubicTo(
        size.width * 0.5521333,
        size.height * 0.4309333,
        size.width * 0.5180667,
        size.height * 0.3847333,
        size.width * 0.5600000,
        size.height * 0.3566667);
    path_0.close();

    canvas.drawPath(path_0, paint_0);

    Paint paint_1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path_1 = Path();

    canvas.drawPath(path_1, paint_1);

    Paint paint_2 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.04;

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.5200000, size.height * 0.3328000);
    path_2.lineTo(size.width * 0.5472000, size.height * 0.2696667);
    path_2.lineTo(size.width * 0.5986000, size.height * 0.2905333);
    path_2.lineTo(size.width * 0.5733333, size.height * 0.3533333);

    canvas.drawPath(path_2, paint_2);

    Paint paint_3 = Paint()
      ..color = const Color.fromARGB(255, 188, 34, 79)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 29.24;

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4945000, size.height * 0.0580000);
    path_3.cubicTo(
        size.width * 0.6713667,
        size.height * 0.0580000,
        size.width * 0.9366333,
        size.height * 0.1814667,
        size.width * 0.9366333,
        size.height * 0.5001333);
    path_3.cubicTo(
        size.width * 0.9366333,
        size.height * 0.6770333,
        size.width * 0.8041667,
        size.height * 0.9423000,
        size.width * 0.4945000,
        size.height * 0.9423000);
    path_3.cubicTo(
        size.width * 0.3176000,
        size.height * 0.9423000,
        size.width * 0.0523333,
        size.height * 0.8098333,
        size.width * 0.0523333,
        size.height * 0.5001333);
    path_3.cubicTo(
        size.width * 0.0523333,
        size.height * 0.3232667,
        size.width * 0.1848000,
        size.height * 0.0580000,
        size.width * 0.4945000,
        size.height * 0.0580000);
    path_3.close();

    canvas.drawPath(path_3, paint_3);

    Paint paint_4 = Paint()
      ..color = const Color.fromARGB(255, 16, 217, 19)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.02;

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.3206667, size.height * 0.6633333);
    path_4.cubicTo(
        size.width * 0.2653667,
        size.height * 0.6011333,
        size.width * 0.2478000,
        size.height * 0.4716667,
        size.width * 0.2940000,
        size.height * 0.4133333);
    path_4.cubicTo(
        size.width * 0.0964000,
        size.height * 0.3525000,
        size.width * 0.3177333,
        size.height * 0.0855667,
        size.width * 0.4088000,
        size.height * 0.2973000);
    path_4.cubicTo(
        size.width * 0.4335667,
        size.height * 0.2819667,
        size.width * 0.4762000,
        size.height * 0.2606000,
        size.width * 0.5257333,
        size.height * 0.2714333);
    path_4.cubicTo(
        size.width * 0.5183333,
        size.height * 0.2808000,
        size.width * 0.5094000,
        size.height * 0.3037000,
        size.width * 0.4940000,
        size.height * 0.3100000);
    path_4.cubicTo(
        size.width * 0.4708667,
        size.height * 0.3619333,
        size.width * 0.4794667,
        size.height * 0.4182333,
        size.width * 0.3973333,
        size.height * 0.4333333);
    path_4.cubicTo(
        size.width * 0.3742333,
        size.height * 0.4577333,
        size.width * 0.3973333,
        size.height * 0.4783333,
        size.width * 0.3973333,
        size.height * 0.4933333);
    path_4.cubicTo(
        size.width * 0.3583333,
        size.height * 0.4810000,
        size.width * 0.3598333,
        size.height * 0.5233333,
        size.width * 0.3473333,
        size.height * 0.5333333);
    path_4.cubicTo(
        size.width * 0.3698333,
        size.height * 0.5483333,
        size.width * 0.4179000,
        size.height * 0.5866000,
        size.width * 0.4404000,
        size.height * 0.6016000);
    path_4.cubicTo(
        size.width * 0.3014000,
        size.height * 0.6176333,
        size.width * 0.3303333,
        size.height * 0.6260000,
        size.width * 0.3206667,
        size.height * 0.6633333);
    path_4.close();

    canvas.drawPath(path_4, paint_4);

    Paint paint_5 = Paint()
      ..color = const Color.fromARGB(255, 15, 243, 6)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.6707333, size.height * 0.6991000);
    path_5.quadraticBezierTo(size.width * 0.6707333, size.height * 0.6991000,
        size.width * 0.6700000, size.height * 0.6966667);
    path_5.lineTo(size.width * 0.6700000, size.height * 0.6933333);
    path_5.quadraticBezierTo(size.width * 0.6310000, size.height * 0.6392333,
        size.width * 0.6193333, size.height * 0.6217333);
    path_5.cubicTo(
        size.width * 0.6585333,
        size.height * 0.5429000,
        size.width * 0.6561000,
        size.height * 0.5041667,
        size.width * 0.6300000,
        size.height * 0.4133333);
    path_5.cubicTo(
        size.width * 0.6457000,
        size.height * 0.3774000,
        size.width * 0.6340000,
        size.height * 0.3575000,
        size.width * 0.6042667,
        size.height * 0.3358667);
    path_5.cubicTo(
        size.width * 0.6084333,
        size.height * 0.3267000,
        size.width * 0.6191667,
        size.height * 0.3067667,
        size.width * 0.6233333,
        size.height * 0.2976000);
    path_5.cubicTo(
        size.width * 0.8089667,
        size.height * 0.4120000,
        size.width * 0.7720333,
        size.height * 0.6005667,
        size.width * 0.6707333,
        size.height * 0.6991000);
    path_5.close();

    canvas.drawPath(path_5, paint_5);

    Paint paint_6 = Paint()
      ..color = const Color.fromARGB(255, 112, 243, 33)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.7360333, size.height * 0.7060333);
    path_6.cubicTo(
        size.width * 0.7504667,
        size.height * 0.7060333,
        size.width * 0.7721333,
        size.height * 0.7162000,
        size.width * 0.7721333,
        size.height * 0.7421333);
    path_6.cubicTo(
        size.width * 0.7721333,
        size.height * 0.7565333,
        size.width * 0.7613667,
        size.height * 0.7782000,
        size.width * 0.7360333,
        size.height * 0.7782000);
    path_6.cubicTo(
        size.width * 0.7216333,
        size.height * 0.7782000,
        size.width * 0.6999667,
        size.height * 0.7674333,
        size.width * 0.6999667,
        size.height * 0.7421333);
    path_6.cubicTo(
        size.width * 0.6999667,
        size.height * 0.7277000,
        size.width * 0.7107333,
        size.height * 0.7060333,
        size.width * 0.7360333,
        size.height * 0.7060333);
    path_6.close();

    canvas.drawPath(path_6, paint_6);

    Paint paint_7 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.74;

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.5645000, size.height * 0.3551667);
    path_7.quadraticBezierTo(size.width * 0.5256250, size.height * 0.3401667,
        size.width * 0.5126667, size.height * 0.3351667);
    path_7.lineTo(size.width * 0.4733333, size.height * 0.4370000);
    path_7.lineTo(size.width * 0.5585000, size.height * 0.4649000);
    path_7.quadraticBezierTo(size.width * 0.5616667, size.height * 0.4503500,
        size.width * 0.5648333, size.height * 0.4455000);
    path_7.cubicTo(
        size.width * 0.5782667,
        size.height * 0.4913667,
        size.width * 0.5961667,
        size.height * 0.5141000,
        size.width * 0.5533333,
        size.height * 0.5833333);
    path_7.quadraticBezierTo(size.width * 0.5316667, size.height * 0.5717500,
        size.width * 0.4666667, size.height * 0.5370000);
    path_7.quadraticBezierTo(size.width * 0.4024667, size.height * 0.5249000,
        size.width * 0.3834000, size.height * 0.5192667);
    path_7.cubicTo(
        size.width * 0.3806667,
        size.height * 0.5221667,
        size.width * 0.3827000,
        size.height * 0.5266667,
        size.width * 0.3800000,
        size.height * 0.5295333);
    path_7.quadraticBezierTo(size.width * 0.3984667, size.height * 0.5419667,
        size.width * 0.4533333, size.height * 0.5800000);
    path_7.quadraticBezierTo(size.width * 0.4728000, size.height * 0.5881000,
        size.width * 0.4819667, size.height * 0.5906000);
    path_7.cubicTo(
        size.width * 0.4775333,
        size.height * 0.6327333,
        size.width * 0.4439667,
        size.height * 0.6149000,
        size.width * 0.3469667,
        size.height * 0.6400000);
    path_7.quadraticBezierTo(size.width * 0.3456917, size.height * 0.6445167,
        size.width * 0.3418667, size.height * 0.6580667);
    path_7.lineTo(size.width * 0.4218333, size.height * 0.7588333);
    path_7.lineTo(size.width * 0.6536667, size.height * 0.7333333);
    path_7.lineTo(size.width * 0.6503333, size.height * 0.7070000);
    path_7.quadraticBezierTo(size.width * 0.6033000, size.height * 0.6455333,
        size.width * 0.5882000, size.height * 0.6254333);
    path_7.cubicTo(
        size.width * 0.6258667,
        size.height * 0.5755667,
        size.width * 0.6419000,
        size.height * 0.4992333,
        size.width * 0.6031667,
        size.height * 0.4100000);
    path_7.cubicTo(
        size.width * 0.5329000,
        size.height * 0.4351333,
        size.width * 0.5248333,
        size.height * 0.3637667,
        size.width * 0.5645000,
        size.height * 0.3551667);
    path_7.close();

    canvas.drawPath(path_7, paint_7);

    Paint paint_8 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.36;

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.5867667, size.height * 0.3563667);
    path_8.cubicTo(
        size.width * 0.5964667,
        size.height * 0.3581333,
        size.width * 0.6128667,
        size.height * 0.3637333,
        size.width * 0.6128667,
        size.height * 0.3824667);
    path_8.cubicTo(
        size.width * 0.6128667,
        size.height * 0.3929333,
        size.width * 0.6051000,
        size.height * 0.4086000,
        size.width * 0.5867667,
        size.height * 0.4086000);
    path_8.cubicTo(
        size.width * 0.5763000,
        size.height * 0.4086000,
        size.width * 0.5606333,
        size.height * 0.4008333,
        size.width * 0.5606333,
        size.height * 0.3824667);
    path_8.cubicTo(
        size.width * 0.5606333,
        size.height * 0.3720333,
        size.width * 0.5696667,
        size.height * 0.3581333,
        size.width * 0.5867667,
        size.height * 0.3563667);
    path_8.close();

    canvas.drawPath(path_8, paint_8);

    Paint paint_9 = Paint()
      ..color = const Color.fromARGB(255, 222, 217, 15)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.36;

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.5867667, size.height * 0.3563667);
    path_9.cubicTo(
        size.width * 0.5964667,
        size.height * 0.3581333,
        size.width * 0.6128667,
        size.height * 0.3637333,
        size.width * 0.6128667,
        size.height * 0.3824667);
    path_9.cubicTo(
        size.width * 0.6128667,
        size.height * 0.3929333,
        size.width * 0.6051000,
        size.height * 0.4086000,
        size.width * 0.5867667,
        size.height * 0.4086000);
    path_9.cubicTo(
        size.width * 0.5763000,
        size.height * 0.4086000,
        size.width * 0.5606333,
        size.height * 0.4008333,
        size.width * 0.5606333,
        size.height * 0.3824667);
    path_9.cubicTo(
        size.width * 0.5606333,
        size.height * 0.3720333,
        size.width * 0.5696667,
        size.height * 0.3581333,
        size.width * 0.5867667,
        size.height * 0.3563667);
    path_9.close();

    canvas.drawPath(path_9, paint_9);

    Paint paint_10 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.38;

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.4766667, size.height * 0.6144667);
    path_10.lineTo(size.width * 0.4700667, size.height * 0.6307667);
    path_10.lineTo(size.width * 0.5125333, size.height * 0.6807667);
    path_10.lineTo(size.width * 0.5240000, size.height * 0.5905333);
    path_10.lineTo(size.width * 0.4866667, size.height * 0.5866667);
    path_10.lineTo(size.width * 0.5532333, size.height * 0.5912667);
    path_10.lineTo(size.width * 0.5744333, size.height * 0.6422333);
    path_10.lineTo(size.width * 0.5889000, size.height * 0.6222667);

    canvas.drawPath(path_10, paint_10);

    Paint paint_11 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.4;

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.5705667, size.height * 0.6299333);
    path_11.lineTo(size.width * 0.5927667, size.height * 0.6785000);
    path_11.lineTo(size.width * 0.5158000, size.height * 0.6858333);

    canvas.drawPath(path_11, paint_11);

    Paint paint_12 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.72;

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.5600000, size.height * 0.4733333);
    path_12.cubicTo(
        size.width * 0.5630333,
        size.height * 0.5066667,
        size.width * 0.5564000,
        size.height * 0.5454000,
        size.width * 0.5300000,
        size.height * 0.5766667);
    path_12.quadraticBezierTo(size.width * 0.5125000, size.height * 0.5725000,
        size.width * 0.4600000, size.height * 0.5600000);
    path_12.lineTo(size.width * 0.4066667, size.height * 0.5233333);

    canvas.drawPath(path_12, paint_12);

    Paint paint_13 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.06;

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.4567333, size.height * 0.4267000);
    path_13.lineTo(size.width * 0.5277333, size.height * 0.4945000);
    path_13.quadraticBezierTo(size.width * 0.5165667, size.height * 0.5074000,
        size.width * 0.5121000, size.height * 0.5126000);
    path_13.cubicTo(
        size.width * 0.4729333,
        size.height * 0.5050000,
        size.width * 0.4466667,
        size.height * 0.4930333,
        size.width * 0.4408333,
        size.height * 0.4441667);
    path_13.quadraticBezierTo(size.width * 0.4450000, size.height * 0.4391667,
        size.width * 0.4567333, size.height * 0.4267000);
    path_13.close();

    canvas.drawPath(path_13, paint_13);

    Paint paint_14 = Paint()
      ..color = const Color.fromARGB(255, 235, 235, 5)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.36;

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.4611667, size.height * 0.4666667);
    path_14.cubicTo(
        size.width * 0.4383417,
        size.height * 0.4929667,
        size.width * 0.4387667,
        size.height * 0.4919333,
        size.width * 0.4311667,
        size.height * 0.5007000);
    path_14.cubicTo(
        size.width * 0.4351333,
        size.height * 0.5044333,
        size.width * 0.4443333,
        size.height * 0.5151667,
        size.width * 0.4483000,
        size.height * 0.5189000);
    path_14.cubicTo(
        size.width * 0.4559667,
        size.height * 0.5100333,
        size.width * 0.4726417,
        size.height * 0.4972167,
        size.width * 0.4813000,
        size.height * 0.4907333);
    path_14.cubicTo(
        size.width * 0.4791333,
        size.height * 0.4705333,
        size.width * 0.4745667,
        size.height * 0.4715333,
        size.width * 0.4611667,
        size.height * 0.4666667);
    path_14.close();

    canvas.drawPath(path_14, paint_14);

    Paint paint_15 = Paint()
      ..color = const Color.fromARGB(255, 216, 26, 26)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.36;

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.4611667, size.height * 0.4666667);
    path_15.cubicTo(
        size.width * 0.4383417,
        size.height * 0.4929667,
        size.width * 0.4387667,
        size.height * 0.4919333,
        size.width * 0.4311667,
        size.height * 0.5007000);
    path_15.cubicTo(
        size.width * 0.4351333,
        size.height * 0.5044333,
        size.width * 0.4443333,
        size.height * 0.5151667,
        size.width * 0.4483000,
        size.height * 0.5189000);
    path_15.cubicTo(
        size.width * 0.4559667,
        size.height * 0.5100333,
        size.width * 0.4726417,
        size.height * 0.4972167,
        size.width * 0.4813000,
        size.height * 0.4907333);
    path_15.cubicTo(
        size.width * 0.4791333,
        size.height * 0.4705333,
        size.width * 0.4745667,
        size.height * 0.4715333,
        size.width * 0.4611667,
        size.height * 0.4666667);
    path_15.close();

    canvas.drawPath(path_15, paint_15);

    Paint paint_16 = Paint()
      ..color = const Color.fromARGB(255, 218, 230, 11)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.36;

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.4413333, size.height * 0.4450333);
    path_16.lineTo(size.width * 0.4106333, size.height * 0.4542667);
    path_16.lineTo(size.width * 0.4130000, size.height * 0.4754000);
    path_16.lineTo(size.width * 0.4473333, size.height * 0.4710000);
    path_16.lineTo(size.width * 0.4413333, size.height * 0.4450333);
    path_16.close();

    canvas.drawPath(path_16, paint_16);

    Paint paint_17 = Paint()
      ..color = const Color.fromARGB(255, 211, 41, 18)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.36;

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.4413333, size.height * 0.4450333);
    path_17.lineTo(size.width * 0.4106333, size.height * 0.4542667);
    path_17.lineTo(size.width * 0.4130000, size.height * 0.4754000);
    path_17.lineTo(size.width * 0.4473333, size.height * 0.4710000);
    path_17.lineTo(size.width * 0.4413333, size.height * 0.4450333);
    path_17.close();

    canvas.drawPath(path_17, paint_17);

    Paint paint_18 = Paint()
      ..color = const Color.fromARGB(255, 236, 243, 5)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.36;

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.5066667, size.height * 0.5086333);
    path_18.lineTo(size.width * 0.4898000, size.height * 0.5305000);
    path_18.lineTo(size.width * 0.4713333, size.height * 0.5203333);
    path_18.lineTo(size.width * 0.4868667, size.height * 0.4954000);
    path_18.lineTo(size.width * 0.5066667, size.height * 0.5086333);
    path_18.close();

    canvas.drawPath(path_18, paint_18);

    Paint paint_19 = Paint()
      ..color = const Color.fromARGB(255, 207, 57, 15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.36;

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.5066667, size.height * 0.5086333);
    path_19.lineTo(size.width * 0.4898000, size.height * 0.5305000);
    path_19.lineTo(size.width * 0.4713333, size.height * 0.5203333);
    path_19.lineTo(size.width * 0.4868667, size.height * 0.4954000);
    path_19.lineTo(size.width * 0.5066667, size.height * 0.5086333);
    path_19.close();

    canvas.drawPath(path_19, paint_19);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
