import 'package:flutter/material.dart';
import 'package:ilearn_project/core/themes.dart';

class OnBoardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  OnBoardWidget(
      {required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center the content
      children: [
        Container(height: screenHeight * 0.25, child: Image.asset(image)),
        Text(
          title,
          style: onBoardTitle(),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            description,
            style: onBoardDesc(),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
