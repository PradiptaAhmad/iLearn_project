import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/controllers/login_controller/loginPageController.dart';
import 'package:ilearn_project/controllers/register_controller/register_controller.dart';

class PasswordFIeld extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType textInputType;
  static final _formKey = GlobalKey<FormState>();
  static final registerC = Get.find<RegisterC>();
  PasswordFIeld({
    required this.label,
    required this.icon,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterC());
    final registerC = Get.find<RegisterC>();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    String? validatePassword(String value) {
      if (value.length < 6) {
        return 'Password has at least 6 characters';
      }
      return null;
    }

    return Obx(() {
      double screenWidth = MediaQuery.of(context).size.width;
      double screenHeight = MediaQuery.of(context).size.height;

      return Container(
        width: screenWidth * 0.9,
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: TextFormField(
            obscureText: registerC.isObsecure.value,
            keyboardType: textInputType,
            style: TextStyle(
              color: Colors.black,
            ),
            validator: (value) {
              final result = validatePassword(value!);
              if (result != null) {
                return result; // Mengembalikan pesan kesalahan jika ada
              }
            },
            onChanged: (value) {
              if (_formKey.currentState!.validate()) {
                registerC.isPasswordValid.value = true;
                registerC.password.value = value;
              } else {
                registerC.isPasswordValid.value = false;
              }
            },
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
                  registerC.setObsecure();
                },
                icon: Icon(
                  registerC.isObsecure.value
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              prefixIcon: Icon(icon, color: Colors.black54),
              hintText: label,
              hintStyle: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
        ),
      );
    });
  }
}
