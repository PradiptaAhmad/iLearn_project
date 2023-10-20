import 'package:flutter/material.dart';

class BtnLogo extends StatelessWidget {
  const BtnLogo({super.key});
  final logoSize = 50.0;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    Widget _InkWell(VoidCallback? OnTap, String imgPath) {
      return InkWell(
        child: Image.asset(
          imgPath,
          width: logoSize,
          height: logoSize,
        ),
        onTap: OnTap,
      );
    }

    return Row(
      children: [
        _InkWell(() {
          print("Google is tapped");
        }, "assets/logo/google.png"),
        SizedBox(width: screenWidth * 0.05),
        _InkWell(() {
          print("Facebook is tapped");
        }, "assets/logo/facebook.png"),
        SizedBox(width: screenWidth * 0.05),
        _InkWell(() {
          print("Instagram is tapped");
        }, "assets/logo/ig.png"),
        SizedBox(width: screenWidth * 0.05),
        _InkWell(() {
          print("Twitter is tapped");
        }, "assets/logo/twt.png"),
      ],
    );
  }
}
