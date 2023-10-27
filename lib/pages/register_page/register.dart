import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/controllers/register_controller/register_controller.dart';
import 'package:ilearn_project/pages/register_page/widget/TextField/email.dart';
import 'package:ilearn_project/pages/register_page/widget/TextField/last_name.dart';
import 'package:ilearn_project/pages/register_page/widget/btnInput.dart';
import 'package:ilearn_project/pages/register_page/widget/logo.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/pages/register_page/widget/checkbox.dart';
import 'package:ilearn_project/pages/register_page/widget/TextField/password.dart';
import 'package:ilearn_project/pages/register_page/widget/TextField/first_name.dart';

class Register extends StatelessWidget {
  const Register({Key? key}); // Perbaikan pada constructor

  static final registerC = Get.find<RegisterC>();

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
              FirstName(
                label: 'First Name',
                icon: Icons.person,
                textInputType: TextInputType.name,
              ),
              SizedBox(
                height: 15,
              ),
              LastName(
                label: 'Last Name',
                icon: Icons.person,
                textInputType: TextInputType.name,
              ),
              SizedBox(
                height: 15,
              ),
              Email(
                label: 'Email',
                icon: Icons.mail,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 15,
              ),
              PasswordFIeld(
                // Perbaikan pada nama komponen
                label: "Password",
                icon: Icons.lock,
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 5,
              ),
              CheckboxWidget(),
              SizedBox(height: 15),
              Obx(() {
                return Visibility(
                  visible: !registerC.isEmailUnique.value,
                  child: Text(
                    "This email is already in use",
                    style: errorText(color: isError),
                  ),
                );
              }),

              
              Obx(() => registerC.isAllValid()
                  ? ButtonInputUser(
                      onPressed: () {
                        registerC.createUserLogin();
                      },
                      color: primaryColor,
                    )
                  : ButtonInputUser(
                      onPressed: () {
                        
                      },
                      color: inActiveColor)),
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
                  Text('or', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
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
