// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

import '../widgets/neumorphic_design.dart';

class NeumorphicEx extends StatelessWidget {
  final NeumorphicDesign? design;

  const NeumorphicEx({Key? key, this.design}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFe6ebf2),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).viewPadding.top + 10,
              ),
              const Text(
                "MyHome",
                style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "nunito",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      NeumorphicDesign(
                        height1: 55,
                        width1: 55,
                        color: const Color(0xFFe6ebf2),
                        offsetB: const Offset(-2, -2),
                        offsetW: const Offset(2, 2),
                        bLevel: 3.0,
                        iconData: Icons.wifi,
                        iconSize: 30.0,
                      ),
                      NeumorphicDesign(
                        height1: 55,
                        width1: 55,
                        color: Color(0xFFe6ebf2),
                        offsetB: Offset(-2, -2),
                        offsetW: Offset(2, 2),
                        bLevel: 5.0,
                        iconData: FontAwesome.lightbulb,
                        iconSize: 30.0,
                      ),
                      NeumorphicDesign(
                        height1: 55,
                        width1: 55,
                        color: Color(0xFFe6ebf2),
                        offsetB: Offset(-2, -2),
                        offsetW: Offset(2, 2),
                        bLevel: 5.0,
                        iconData: Icons.home,
                        iconSize: 30.0,
                      ),
                      NeumorphicDesign(
                        height1: 55,
                        width1: 55,
                        color: Color(0xFFe6ebf2),
                        offsetB: Offset(-2, -2),
                        offsetW: Offset(2, 2),
                        bLevel: 5.0,
                        iconData: FontAwesome.th_large,
                        iconSize: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              //
              //
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    //border: Border.all(color: Colors.blueAccent),
                    color: const Color(0xFFe6ebf2),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(-3, -3),
                          blurRadius: 3.0,
                          color: Colors.white.withOpacity(.7)),
                      BoxShadow(
                          offset: Offset(3, 3),
                          blurRadius: 3.0,
                          color: Colors.black.withOpacity(.15))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFe6ebf2)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFe6ebf2),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(-2, -2),
                                  blurRadius: 2.0,
                                  color: Colors.black.withOpacity(.3)),
                              BoxShadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 2.0,
                                  color: Colors.white.withOpacity(.7)),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFe6ebf2),
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFDCE7F1),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(-2, -2),
                                          blurRadius: 2.0,
                                          color: Colors.black.withOpacity(.3)),
                                      BoxShadow(
                                          offset: Offset(2, 2),
                                          blurRadius: 2.0,
                                          color: Colors.white.withOpacity(.7)),
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Tempreture",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(.6),
                                          fontFamily: "nunito",
                                          fontSize: 20.0),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "20°C",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(.6),
                                          fontFamily: "nunito",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ],
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
              SizedBox(
                height: 30.0,
              ),
              //
              //
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                    height: 90.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFe6ebf2),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color: Colors.black.withOpacity(.15))
                        ]),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xFFe6ebf2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(-3, -3),
                                        color: Colors.white.withOpacity(.7)),
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(3, 3),
                                        color: Colors.black.withOpacity(.15))
                                  ]),
                              child: Icon(
                                FontAwesome.leaf,
                                color: Colors.black.withOpacity(.5),
                                size: 30.0,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Humidity",
                                  style: TextStyle(
                                      fontFamily: "nunito",
                                      color: Colors.black.withOpacity(.5),
                                      fontSize: 15.0)),
                              Text("65%",
                                  style: TextStyle(
                                      fontFamily: "nunito",
                                      color: Colors.black.withOpacity(.5),
                                      fontSize: 15.0))
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                    height: 90.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFe6ebf2),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color: Colors.black.withOpacity(.15))
                        ]),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xFFe6ebf2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(-3, -3),
                                        color: Colors.white.withOpacity(.7)),
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(3, 3),
                                        color: Colors.black.withOpacity(.15))
                                  ]),
                              child: Icon(
                                Icons.wifi,
                                color: Colors.black.withOpacity(.5),
                                size: 30.0,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Speed",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.5),
                                      fontFamily: "nunito",
                                      fontSize: 15.0)),
                              Text("20mbps",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.5),
                                      fontFamily: "nunito",
                                      fontSize: 15.0))
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Current Tempreture",
                            style: TextStyle(
                                color: Colors.black.withOpacity(.5),
                                fontFamily: "nunito",
                                fontSize: 15.0)),
                        Text("20°C",
                            style: TextStyle(
                                color: Colors.black.withOpacity(.6),
                                //fontFamily: "nunito",
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
