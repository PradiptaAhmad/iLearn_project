import 'package:flutter/material.dart';

class InputUser extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType textInputType;

  const InputUser({
    required this.label,
    required this.icon,
    required this.textInputType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
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
