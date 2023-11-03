import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/controllers/login_controller/loginPageController.dart';

class PasswordFIeld extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType textInputType;
  PasswordFIeld({
    required this.label,
    required this.icon,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    Get.put(LoginPageController());
    final loginPageC = Get.find<LoginPageController>();
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    
    return Obx(() {


      return Container(
        width: screenWidth * 0.9,
        child: TextField(
          obscureText: loginPageC.isObsecure.value,
          keyboardType: textInputType,
          style: TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFEFF6FF),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                print("this is clicked");
                loginPageC.setObsecure();
              },
              icon: Icon(
                loginPageC.isObsecure.value
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            prefixIcon: Icon(icon, color: Colors.black54),
            hintText: label,
            hintStyle: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      );
    });
  }
}