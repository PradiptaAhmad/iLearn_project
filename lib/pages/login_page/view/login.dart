import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/pages/login_page/data/login_data.dart';
import 'package:ilearn_project/pages/login_page/widget/btn_forgot.dart';
import 'package:ilearn_project/pages/login_page/widget/loginButtonInput.dart';
import 'package:ilearn_project/pages/login_page/widget/loginFormField.dart';
import 'package:ilearn_project/pages/login_page/widget/text_or.dart';
import 'package:ilearn_project/pages/login_page/widget/txtBtn_signup.dart';
import 'package:ilearn_project/pages/register_page/widget/btnLogo.dart';

import '../login_controller/loginPageController.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  // keys validator
  static final _emailFormKey = GlobalKey<FormState>();
  static final _passwordFormKey = GlobalKey<FormState>();

  // Getx Import
  static final loginC = Get.find<LoginPageController>();
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
              LoginData.HeadImage,
              height: screenHeight * 0.3,
              width: screenWidth * 0.8,
            ),
            SizedBox(height: 40),
            Text(
              LoginData.HeadingText,
              style: onBoardTitle(),
            ),
            Text(
              LoginData.SubHeadingText,
              style: subHeaderCardHome(),
            ),
            SizedBox(
              height: 20,
            ),
            LoginFormField(
                label: LoginData.EmailText,
                keys: _emailFormKey,
                icon: Icons.email,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
                  if (_emailFormKey.currentState!.validate()) {
                    loginC.email.value = value;
                    loginC.isEmailValid.value = true;
                    loginC.isEmailAndPasswordCorrect.value = true;
                  }
                },
                validatorForm: (value) {
                  if (!loginC.emailRegex.hasMatch(value!)) {
                    return LoginData.EmailInvalid;
                  }
                  return null;
                },
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: 10,
            ),
            Obx(() => LoginFormField(
                label: LoginData.PasswordText,
                keys: _passwordFormKey,
                isObsecure: loginC.isObsecure.value,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
                  if (_passwordFormKey.currentState!.validate()) {
                    loginC.password.value = value;
                    loginC.isPasswordValid.value = true;
                    loginC.isEmailAndPasswordCorrect.value = true;
                  }
                },
                validatorForm: (value) {
                  if (value!.length < 6) {
                    return LoginData.PasswordInvalid;
                  }
                  return null;
                },
                icon: Icons.lock,
                iconButton: IconButton(
                  onPressed: () {
                    loginC.isObsecure.value = !loginC.isObsecure.value;
                  },
                  icon: loginC.isObsecure.value
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
                textInputType: TextInputType.visiblePassword)),
            SizedBox(
              height: 5,
            ),
            btnForgot(),
            SizedBox(
              height: 10,
            ),
            Obx(() {
              return Visibility(
                visible: !loginC.isEmailAndPasswordCorrect.value,
                child: Text(
                  "Email Or Password Is Incorrect",
                  style: errorText(color: isError),
                ),
              );
            }),
            Obx(() => Container(
                width: screenWidth * 0.9,
                height: 43,
                child: loginC.isAllValid() == false
                    ? LoginButtonInput(
                        onPressed: () {},
                        color: inActiveColor,
                        label: LoginData.LoginText,
                      )
                    : LoginButtonInput(
                        onPressed: () {
                          print("Login is clicked");
                          loginC.userLogin();
                        },
                        color: primaryColor,
                        label: LoginData.LoginText,
                      ))),
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
