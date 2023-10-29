import 'package:flutter/material.dart';
import 'package:ilearn_project/appBar/appbarcustom.dart';
import 'package:ilearn_project/pages/foryou_page/widget/icontxt.dart';
import 'package:ilearn_project/pages/foryou_page/widget/playlistcourse.dart';

import '../../core/themes.dart';
import 'widget/button_buy.dart';

class DetailForYou extends StatelessWidget {
  const DetailForYou({super.key});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarCustom(textColor: Colors.black,showSearchBar: false, appBarText: 'Course Detail',showProfileImage: false),
            Image.asset("assets/images/laptop.png", width: screenWidth *0.89),
            SizedBox(height: screenHeight*0.04,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Title Courses", style: titleForYou(color: Colors.black)),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Title Courses",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7), // Set alpha to 0.7 for 70% opacity
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight*0.03),
                  Row(
                      children: [
                        IconWithText(
                          iconData: Icons.star,
                          iconColor: primaryColor,
                          labelText: "4.8",
                        ),
                        SizedBox(width: screenWidth*0.03),
                        IconWithText(
                          iconData: Icons.timer,
                          iconColor: peachColor,
                          labelText: "72 Hours",
                        )
                      ],
                  ),
                  Playlist(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: BottomSheet(
        onClosing: () {},
        backgroundColor: Colors.white,
        enableDrag: false,
        builder: (context) {
          return const SizedBox(
            height: 80,
            child: EnroollBottomSheet(),
          );
        },
      ),
    );
  }
}
