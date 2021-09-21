import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const String svg = "assets/svg";
const String images = "assets/images";
const String icons = "assets/icons";
const String logs = "assets/logs";

BoxDecoration boxImage({
  String image = "$images/one.png",
}) =>
    BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    );

SvgPicture logoSVG({
  String svg = "$logs/logo_light.svg",
  width = 150,
}) =>
    SvgPicture.asset(
      svg,
      width: width,
      placeholderBuilder: (BuildContext context) =>
          const CircularProgressIndicator(),
    );
