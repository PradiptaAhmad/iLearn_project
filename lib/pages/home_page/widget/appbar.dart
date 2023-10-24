import 'package:flutter/material.dart';
import 'package:ilearn_project/pages/home_page/widget/userpoint.dart';

import '../../../core/themes.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  Widget profileImage() {
    return ProfileImage();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.1, // Sesuaikan dengan tinggi yang diinginkan
      padding: EdgeInsets.only(top: screenHeight * 0.035),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text("Start Learning", style: titlePage()),
          ),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/avatar.png")
                as ImageProvider<Object>,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  child: profileImage(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}