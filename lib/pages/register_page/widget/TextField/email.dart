import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/controllers/register_controller/register_controller.dart';


class Email extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType textInputType;
  Email({
    required this.label,
    required this.icon,
    required this.textInputType,
    Key? key,
  }) : super(key: key);
  static final _formKey = GlobalKey<FormState>();
  static final registerC = Get.find<RegisterC>();
  @override
  Widget build(BuildContext context) {
    String? validateEmail(String value) {
      // Regular expression untuk memeriksa alamat email
      final emailRegex = RegExp(
        r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
      );

      if (!emailRegex.hasMatch(value)) {
        return 'Please enter a valid email';
      }

      return null;
    }
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.9,
      child: Form(
        key: _formKey,
          autovalidateMode: registerC.isEmailUnique.value
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.always,
          child: TextFormField(
            keyboardType: textInputType,
            style: TextStyle(
              color: Colors.black,
            ),
            validator: (value) {
              final result = validateEmail(value!);
              if (result != null) {
                return result; // Mengembalikan pesan kesalahan jika ada
              }
            },
            onChanged: (value) {
              if (_formKey.currentState!.validate() &&
                  registerC.isEmailUnique.value) {
                registerC.isEmailValid.value = true;
                registerC.email.value = value;
              } else {
                registerC.isEmailValid.value = false;
              }
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFEFF6FF),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
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
        ));
    
  }
}
