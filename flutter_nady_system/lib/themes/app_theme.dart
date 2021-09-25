import 'package:flutter/material.dart';

import '../views/pages/utils/global.dart';
part './dark_theme.dart';

final ThemeData lightThemeData = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  primaryColor: const Color(0xFF0000FF),
  secondaryHeaderColor: const Color(0xFFFF0000),
  backgroundColor: const Color(0xFFe6ebf2),
  canvasColor: const Color(0xFFe6ebf2),
  hoverColor: const Color(0xFF00FF00),
  cardColor: const Color(0xFFFFFFFF),
  fontFamily: Fonts.abrilFatface,
  colorScheme: const ColorScheme(
    primary: Color(0xFF0000FF),
    primaryVariant: Color(0xFF000000),
    secondary: Color(0xFF00FF00),
    secondaryVariant: Color(0xFF00FF00),
    surface: Color(0xFFFFFFFF),
    background: Color(0xFFe6ebf2),
    error: Color(0xFFFF0000),
    onPrimary: Color(0xFF00FF00),
    onSecondary: Color(0xFFF38E0B),
    onSurface: Color(0xFFE9E51D),
    onBackground: Color(0xFF000000),
    onError: Color(0xFFFF0000),
    brightness: Brightness.light,
  ),
);
