import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType textInputType;

  const EmailField({
    required this.label,
    required this.icon,
    required this.textInputType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.9,
      child: TextField(
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

          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          prefixIcon: Icon(icon, color: Colors.black54),
          hintText: label,
          hintStyle: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
