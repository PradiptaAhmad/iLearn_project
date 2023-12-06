import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ilearn_project/pages/register_page/widget/btnInput.dart';
import 'package:ilearn_project/pages/register_page/widget/formTextField.dart';
import 'package:ilearn_project/pages/register_page/widget/logo.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/pages/register_page/widget/checkbox.dart';

import '../controller/register_controller.dart';

class RegisterPageView extends GetView<RegisterController> {
  const RegisterPageView({Key? key}); // Perbaikan pada constructor

  // FormKey
  static final _firstNameFormKey = GlobalKey<FormState>();
  static final _lastNameFormKey = GlobalKey<FormState>();
  static final _emailFormKey = GlobalKey<FormState>();
  static final _passwordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.1),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 40),
              FormTextField(
                label: 'First Name',
                icon: Icons.person,
                textInputType: TextInputType.name,
                keys: _firstNameFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
                  if (_firstNameFormKey.currentState!.validate()) {
                    controller.first_name.value = value;
                    controller.isFirstNameValid.value = true;
                  }
                },
                validatorForm: (value) {
                  if (value!.isEmpty) {
                    return "First Name Could Not Be Empty";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              FormTextField(
                label: 'Last Name',
                icon: Icons.person,
                textInputType: TextInputType.name,
                keys: _lastNameFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
                  if (_lastNameFormKey.currentState!.validate()) {
                    controller.last_name.value = value;
                  }
                },
              ),
              SizedBox(
                height: 15,
              ),
              FormTextField(
                label: 'Email',
                icon: Icons.mail,
                textInputType: TextInputType.emailAddress,
                keys: _emailFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
                  if (_emailFormKey.currentState!.validate()) {
                    controller.email.value = value;
                    controller.isEmailValid.value = true;
                    controller.isEmailUnique.value = true;
                  }
                },
                validatorForm: (value) {
                  final result = controller.validateEmail(value!);
                  if (result != null) {
                    return result;
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              Obx(() => FormTextField(
                    // Perbaikan pada nama komponen
                    label: "Password",
                    icon: Icons.lock,
                    isObsecure: controller.isObsecure.value,
                    textInputType: TextInputType.visiblePassword,
                    keys: _passwordFormKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) {
                      if (_passwordFormKey.currentState!.validate()) {
                        controller.password.value = value;
                        controller.isPasswordValid.value = true;
                      }
                    },
                    validatorForm: (value) {
                      if (value!.length < 6) {
                        return "Password Must Be More Than 6 Characters";
                      }
                      return null;
                    },
                    iconButton: IconButton(
                        onPressed: () {
                          controller.isObsecure.value =
                              !controller.isObsecure.value;
                        },
                        icon: Icon(
                          controller.isObsecure.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                        )),
                  )),
              SizedBox(
                height: 5,
              ),
              CheckboxWidget(),
              SizedBox(height: 15),
              Obx(() {
                return Visibility(
                  visible: !controller.isEmailUnique.value,
                  child: Text(
                    "This email is already in use",
                    style: errorText(color: isError),
                  ),
                );
              }),

              Obx(() => controller.isAllValid()
                  ? ButtonInputUser(
                      onPressed: () {
                        controller.createUserLogin();
                      },
                      color: primaryColor,
                    )
                  : ButtonInputUser(onPressed: () {}, color: inActiveColor)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    width: 150, // Lebar garis
                    color: peachColor,
                  ),
                  SizedBox(width: 10),
                  Text('or',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  SizedBox(width: 10),
                  Container(
                    height: 2,
                    width: 150, // Lebar garis
                    color: peachColor,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Logo(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(width: 10),
                  Text(
                    "Login",
                    style: TextStyle(color: Color(0xFFFFD1AD)),
                  ),
                ],
              ),
              // Logo()
            ],
          ),
        ),
      ),
    );
  }
}
