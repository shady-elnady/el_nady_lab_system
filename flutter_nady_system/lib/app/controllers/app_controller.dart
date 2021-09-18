import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  late RxInt _width;
  late RxInt _height;

  set size(Size size) {
    _width.value = size.width as int;
    _height.value = size.height as int;
  }

  get width => _width.value;

  get height => _height.value;

  @override
  void onInit() {
    //??TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    //!!TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    //!!TODO: implement onClose
    super.onClose();
  }
}
