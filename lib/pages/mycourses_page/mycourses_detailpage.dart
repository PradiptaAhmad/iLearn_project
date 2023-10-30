import 'package:flutter/material.dart';
import 'package:ilearn_project/pages/mycourses_page/widget/playlistmycourse.dart';

import '../../appBar/appbarcustom.dart';
import '../../core/themes.dart';

class DetailMyCourses extends StatelessWidget {
  const DetailMyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          AppBarCustom(
            textColor: Colors.black,
            showSearchBar: false,
            appBarText: 'Details',
            showProfileImage: false,
          ),
          Ink.image(
            image: AssetImage("assets/images/laptop.png"),
            width: screenWidth * 0.89,
            height: screenHeight * 0.22,
            fit: BoxFit.cover,
            child: InkWell(
              onTap: () {
                // Handle navigation when the image is tapped
              },
              child: Center(
                child: Icon(
                  Icons.play_circle,
                  size: 45, // Adjust the size as needed
                  color: primaryColor, // Customize the color
                ),
              ),
            ),
          ),
          SizedBox(height: screenHeight*0.05,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("course files:", style: txtDetailCourse(color: Colors.black)),
                Text("20 files", style: txtDetailCourse(color: Colors.black)),
              ],
            ),
          ),
          PlaylistMyCourses(), // Add PlaylistMyCourses here
        ],
      ),
    );
  }
}
