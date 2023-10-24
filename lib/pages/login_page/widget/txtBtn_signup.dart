import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/routes/route_name.dart';

class btnSingup extends StatelessWidget {
  const btnSingup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: bottomTxtLogin(color: Colors.black),
        ),
        InkWell(
          onTap: () => Get.toNamed(RouteName.register),
          child: Text(
            "Sign Up",
            style: bottomTxtLogin(color: peachColor),
          ),
        ),
      ],
    );
  }
}