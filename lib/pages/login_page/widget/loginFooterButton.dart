import 'package:flutter/material.dart';
import 'package:ilearn_project/pages/login_page/data/login_data.dart';

class LoginFooterButton extends StatelessWidget {
  const LoginFooterButton({super.key});
  final logoSize = 50.0;
  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
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
        }, LoginData.GoogleImage),
        SizedBox(width: screenWidth * 0.05),
        _InkWell(() {
          print("Facebook is tapped");
        }, LoginData.FacebookImage),
        SizedBox(width: screenWidth * 0.05),
        _InkWell(() {
          print("Instagram is tapped");
        }, LoginData.InstagramImage),
        SizedBox(width: screenWidth * 0.05),
        _InkWell(() {
          print("Twitter is tapped");
        }, LoginData.TwitterImage),
      ],
    );
  }
}
