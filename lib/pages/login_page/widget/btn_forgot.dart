import 'package:flutter/material.dart';

class btnForgot extends StatelessWidget {
  const btnForgot({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(
        right: screenWidth * 0.06,
      ),
      child: InkWell(
        onTap: () {},
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot Password?",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromARGB(255, 154, 154, 154),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
