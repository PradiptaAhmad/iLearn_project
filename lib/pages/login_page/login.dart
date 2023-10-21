import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/pages/login_page/widget/btn_forgot.dart';
import 'package:ilearn_project/pages/login_page/widget/emailField.dart';
import 'package:ilearn_project/pages/login_page/widget/passwordField.dart';
import 'package:ilearn_project/pages/login_page/widget/text_or.dart';
import 'package:ilearn_project/pages/login_page/widget/txtBtn_signup.dart';
import 'package:ilearn_project/pages/register_page/widget/btnLogo.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(children: [
            SizedBox(height: screenHeight * 0.1),
            Image.asset(
              "assets/images/login.png",
              height: screenHeight * 0.3,
              width: screenWidth * 0.8,
            ),
            SizedBox(height: 40),
            Text(
              "Hi There!",
              style: onBoardTitle(),
            ),
            Text(
              "Enter details below to continue",
              style: subHeaderCardHome(),
            ),
            SizedBox(
              height: 20,
            ),
            EmailField(
                label: "Email",
                icon: Icons.email,
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: 10,
            ),
            PasswordFIeld(
                label: "Password",
                icon: Icons.lock,
                textInputType: TextInputType.visiblePassword),
            SizedBox(
              height: 5,
            ),
            btnForgot(),
            SizedBox(
              height: 10,
            ),
            Container(
              width: screenWidth * 0.9,
              height: 43,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Login",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            txtOr(),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BtnLogo(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            btnSingup(),
          ]),
        ),
      ),
    );
  }
}
