import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  brightness: Brightness.light,
  primarySwatch: LightThemeColors.materialGreen,
  primaryColor: LightThemeColors.green,
  backgroundColor: LightThemeColors.bGColor,
  canvasColor: LightThemeColors.bGColor,
  hoverColor: LightThemeColors.hoverColor,
  cardColor: LightThemeColors.cardColor,
  fontFamily: 'Abril_Fatface',
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
      color: LightThemeColors.materialGreen,
    ),
  ),
);

class LightThemeColors {
  static const Color bGColor = Color(0xFFe6ebf2); //rgba(00, 256, 255, 256)
  static const Color hoverColor = Color(0xFF0000FF); //rgba(00, 256, 255, 256)
  static const Color textColor = Color(0xFFff0000); //rgba(00, 00, 00, 256)
  static const Color borderColor = Color(0xFF0000FF); //rgba(00, 256, 255, 256)
  static const Color cardColor = Color(0xFF000000); //rgba(00, 00, 00, 256)
  static const Color green = Color(0xFF00FF00); //rgba(00, 256, 255, 256)
  static const MaterialColor materialGreen =
      Colors.green; //rgba(00, 256, 255, 256)
}
