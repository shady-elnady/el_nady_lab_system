// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_nady_system/routes/app_pages.dart';
import 'package:get/get.dart';

Widget actionButton(String text, {Function? fun}) {
  return InkWell(
    onTap: () {
      fun!();
      //Get.offAndToNamed(Routes.homePage);
    },
    onDoubleTap: () {
      Get.offAndToNamed(Routes.logPage);
    },
    child: Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.red.shade200,
            spreadRadius: 4,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

class ActionButton extends StatelessWidget {
  final String text;
  final Function? fun;
  const ActionButton({
    Key? key,
    this.text = "Log In",
    this.fun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        fun!();
        //Get.offAndToNamed(Routes.homePage);
      },
      onDoubleTap: () {
        Get.offAndToNamed(Routes.logPage);
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.red.shade200,
              spreadRadius: 4,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
