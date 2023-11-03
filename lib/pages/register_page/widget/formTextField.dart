import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType textInputType;
  final Function(String)? onChanged;
  final Key keys;
  final IconButton? iconButton;
  final bool? isObsecure;
  String? Function(String?)? validatorForm;
  final AutovalidateMode autovalidateMode;
  FormTextField({
    required this.label,
    required this.icon,
    required this.textInputType,
    required this.keys,
    required this.autovalidateMode,
    this.iconButton,
    this.isObsecure,
    this.validatorForm,
    Key? key,
    this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: screenWidth * 0.9,
        child: Form(
          key: keys,
          autovalidateMode: autovalidateMode,
          child: TextFormField(
            obscureText: isObsecure ?? false,
            keyboardType: textInputType,
            style: TextStyle(
              color: Colors.black,
            ),
            validator: validatorForm,
            onChanged: onChanged,
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
              suffixIcon: iconButton,
            ),
          ),
        ));
  }
}
