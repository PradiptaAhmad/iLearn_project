import 'package:flutter/material.dart';

class LoginButtonInput extends StatelessWidget {
  final VoidCallback onPressed;
  final String? label;
  final Color? color;
  LoginButtonInput({
    required this.onPressed,
    this.label,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(label!,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
    );
  }
}
