import 'package:flutter/material.dart';
import 'package:ilearn_project/pages/login_page/data/login_data.dart';

class btnForgot extends StatelessWidget {
  const btnForgot({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.9,
      margin: EdgeInsets.only(top: 5),
      child: InkWell(
        onTap: () {},
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            LoginData.ForgotPasswordText,
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
