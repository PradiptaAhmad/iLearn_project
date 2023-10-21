import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class ForYou extends StatelessWidget {
  const ForYou({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 8; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.02, // Adjust as needed
                horizontal: screenWidth * 0.05, // Adjust as needed
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(screenHeight * 0.025), // Adjust as needed
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: screenHeight * 0.008, // Adjust as needed
                    offset: Offset(0, screenHeight * 0.004), // Adjust as needed
                  ),
                ],
              ),
              child: SingleChildScrollView( // Wrap content with SingleChildScrollView
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("HTML & CSS", style: titleCard()),
                    Text("12 Exercises", style: subTitleCard()),
                    Image.asset("assets/images/htmlcard.png", width: screenWidth * 0.19, height: screenHeight * 0.1),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
