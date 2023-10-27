import 'package:flutter/material.dart';
import 'package:ilearn_project/appBar/searchbar.dart';
import 'package:ilearn_project/appBar/userpoint.dart';

import '../core/themes.dart';

class AppBarCustom extends StatelessWidget {
  final String appBarText;
  final bool showSearchBar;
  final Color textColor; // Add a parameter for the text color

  const AppBarCustom({
    Key? key,
    required this.appBarText,
    this.showSearchBar = true,
    this.textColor = Colors.black, // Provide a default text color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios_new_outlined),
              Text(
                appBarText,
                style: titlePage().copyWith(color: textColor), // Apply the provided text color
              ),
              SizedBox(width: screenHeight * 0.05, child: ProfileImage()),
            ],
          ),
          SizedBox(height: screenHeight * 0.03),
          if (showSearchBar) CustomSearchBar(),
        ],
      ),
    );
  }
}
