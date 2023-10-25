import 'package:flutter/material.dart';
import 'package:ilearn_project/core/themes.dart';

class txtOr extends StatelessWidget {
  const txtOr({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2,
          width: screenWidth * 0.4, // Lebar garis
          color: peachColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text('or', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 2,
          width: screenWidth * 0.4, // Lebar garis
          color: peachColor,
        ),
      ],
    );
  }
}
