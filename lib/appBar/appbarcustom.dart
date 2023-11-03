import 'package:flutter/material.dart';
import 'package:ilearn_project/appBar/searchbar.dart';
import 'package:ilearn_project/appBar/userpoint.dart';

import '../core/themes.dart';

class AppBarCustom extends StatelessWidget {
  final String appBarText;
  final bool showSearchBar;
  final Color textColor;
  final bool showProfileImage;

  const AppBarCustom({
    Key? key,
    required this.appBarText,
    this.showSearchBar = true,
    this.textColor = Colors.black,
    this.showProfileImage = true,
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
              Expanded(
                child: Center(
                  child: Text(
                    appBarText,
                    style: titlePage().copyWith(color: textColor),
                  ),
                ),
              ),
              if (showProfileImage) SizedBox(width: screenHeight * 0.05, child: ProfileImage()),
            ],
          ),
          SizedBox(height: screenHeight * 0.03),
          if (showSearchBar) CustomSearchBar(),
        ],
      ),
    );
  }
}
