import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_nady_system/app/index.dart';
import 'package:flutter_nady_system/routes/app_pages.dart';
import 'package:flutter_nady_system/views/pages/utils/global.dart';
import 'action_button.dart';

class LogInComponent extends GetWidget<AuthController> {
  final Function onSignUpSelected;

  const LogInComponent({
    Key? key,
    required this.onSignUpSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        top: 50,
        left: size.height > 770 ? 64 : 32,
        right: size.height > 770 ? 64 : 32,
      ),
      child: Center(
        child: Card(
          color: Theme.of(context).canvasColor,
          elevation: 4,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            // side: BorderSide(color: Global.kPrimaryColor),
          ),
          child: AnimatedContainer(
            duration: duration,
            height: size.height *
                (size.height > 770
                    ? 0.7
                    : size.height > 670
                        ? 0.8
                        : 0.8),
            width: 500,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                // side: BorderSide(color: Global.kPrimaryColor),
              ),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LOG IN",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: 30,
                        child: Divider(
                          color: Theme.of(context).primaryColor,
                          thickness: 2,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          suffixIcon: Icon(
                            Icons.mail_outline,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          suffixIcon: Icon(
                            Icons.lock_outline,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      ActionButton(
                        text: "Log In",
                        fun: () => Get.toNamed(Routes.homePage),
                        //fun: () => controller.signInWithFacebook(),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "not have an account?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              onSignUpSelected();
                            },
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Theme.of(context).primaryColor,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
