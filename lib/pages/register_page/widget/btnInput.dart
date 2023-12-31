import 'package:flutter/material.dart';
import 'package:ilearn_project/core/themes.dart';

class ButtonInputUser extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  const ButtonInputUser({Key? key, required this.onPressed, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(365, 43),
      ),
      child: Text(
        'Register',
        style: buttonTxt(),
      ),
    );
  }
}
