import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

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
                  width: screenWidth * 0.035,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
