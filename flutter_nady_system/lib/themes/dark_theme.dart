import 'package:flutter/material.dart';

final ThemeData darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
  backgroundColor: Colors.black,
  primaryColor: Colors.blue,
  fontFamily: 'Abril_Fatface',
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
  ),
);
