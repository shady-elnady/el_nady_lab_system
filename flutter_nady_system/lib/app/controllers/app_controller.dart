// ignore_for_file: unnecessary_overrides, avoid_print
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/app_theme.dart';
import '../../views/pages/utils/index.dart';

class AppController extends GetxController {
  // Width - Height
  final RxDouble _width = Get.width.obs;
  final RxDouble _height = Get.height.obs;
  double get width => _width.value;
  double get height => _height.value;
  set size(Size size) {
    _width.value = size.width;
    _height.value = size.height;
    print("Set Fun =>Width : $_width , Height : $_height");
  }

  // Locale App
  final Rx<Locale> _locale = english.obs;
  Locale get locale => _locale.value;
  set locale(Locale newLocale) {
    Get.updateLocale(newLocale);
    _locale.value = newLocale;
  }

  // Theme
  final RxBool _darkTheme = false.obs;
  ThemeMode get themeMode =>
      _darkTheme.value ? ThemeMode.dark : ThemeMode.light;
  bool get darkTheme => _darkTheme.value;
  ThemeData get theme => _darkTheme.value ? darkThemeData : lightThemeData;
  void changeTheme() {
    _darkTheme.toggle();
    return Get.changeTheme(_darkTheme.value ? darkThemeData : lightThemeData);
  }

  // Logo
  String get logo =>
      _darkTheme.value ? ImagePath().logoDark : ImagePath().logoLight;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
