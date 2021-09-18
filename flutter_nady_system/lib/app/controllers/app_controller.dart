// ignore_for_file: unnecessary_overrides
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  late RxDouble _width;
  late RxDouble _height;

  set size(Size size) {
    _width.value = size.width;
    _height.value = size.height;
    // ignore: avoid_print
    print("Width : $_width , Height : $_height");
  }

  double get width => _width.value;

  double get height => _height.value;

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
