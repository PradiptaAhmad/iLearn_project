import 'package:flutter/material.dart';
import 'package:ilearn_project/core/themes.dart';

class ButtonInputUser extends StatelessWidget {
  final VoidCallback onPressed;

  const ButtonInputUser({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ElevatedButton(
        onPressed: this.onPressed,
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(365, 43),
        ),
        child: Text(
          'Register',
          style: buttonTxt(color: Colors.white),
        ),
      ),
    );
  }
}
