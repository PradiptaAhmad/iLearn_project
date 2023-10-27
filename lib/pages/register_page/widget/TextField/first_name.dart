import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/controllers/register_controller/register_controller.dart';

class FirstName extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType textInputType;
  static final _formKey = GlobalKey<FormState>();
  static final registerC = Get.find<RegisterC>();
  
  FirstName({
    required this.label,
    required this.icon,
    required this.textInputType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.9,
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: TextFormField(
          // keyboardType: textInputType,
          validator: (value) {
            if (value!.isEmpty) {
              return 'first name could not be empty';
            }
            return null;
          },
          onChanged: (value) {
            if(_formKey.currentState!.validate()) {
              registerC.isFirstNameValid.value = true;
              registerC.first_name.value = value;
            } else {
              registerC.isFirstNameValid.value = false;
            }
          },
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
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            prefixIcon: Icon(icon, color: Colors.black54),
            hintText: label,
            hintStyle: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
