// ignore_for_file: unnecessary_overrides, avoid_print
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  final Rx<Locale> _locale = const Locale('en', 'US').obs;
  Locale get locale => _locale.value;
  set locale(Locale newLocale) {
    Get.updateLocale(newLocale);
    _locale.value = newLocale;
  }

  // Theme
  final RxBool _darkTheme = false.obs;
  bool get darkTheme => _darkTheme.value;
  ThemeData get theme =>
      _darkTheme.value ? ThemeData.dark() : ThemeData.light();
  void changeTheme() {
    _darkTheme.toggle();
    return Get.changeTheme(
        _darkTheme.value ? ThemeData.dark() : ThemeData.light());
  }

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
