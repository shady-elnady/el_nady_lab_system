import 'package:flutter/material.dart';

class Fonts {
  static const String notoColorEmoji = "NotoColorEmoji";
  static const String reemKufi = "Reem_Kufi";
  static const String abrilFatface = "Abril_Fatface";
  static const String libreBarcode128Text = "Libre_Barcode_128_Text";
  static const String nunito = "Nunito";
}

class ImagePath {
  static const String _svg = "assets/svg";
  static const String _images = "assets/images";
  static const String _icons = "assets/icons";
  static const String _logs = "assets/logs";
  //logs
  String get logoLight => "$_logs/logo_light.svg";
  String get logoDark => "$_logs/logo_dark.svg";
  String get one => "$_images/one.png";
  String get tick => "$_icons/tick.png";
  String get sunSvg => "$_svg/sun.svg";
}

const Locale english = Locale('en', 'US');
const Locale arabic = Locale('ar', 'AR');
const Locale frensh = Locale('fr', 'FR');

const Duration duration = Duration(microseconds: 1000);
