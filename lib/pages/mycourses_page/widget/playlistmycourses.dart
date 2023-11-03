import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class PlaylistCourses extends StatelessWidget {
  const PlaylistCourses({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            width: screenWidth * 0.9, // Mengatur lebar Container
            padding: EdgeInsets.symmetric(
              vertical: screenHeight * 0.02, // Sesuaikan sesuai kebutuhan
              horizontal: screenWidth * 0.05, // Sesuaikan sesuai kebutuhan
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(screenHeight * 0.025),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: screenHeight * 0.008,
                  offset: Offset(0, screenHeight * 0.004),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/images/laptop.png", width: screenWidth * 0.28),
                  SizedBox(width: screenWidth*0.04,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Ratakan teks ke kiri
                    children: [
                      Text("Graphic Design", style: titlePlaylist(color: Colors.black)),
                      SizedBox(height: screenHeight*0.01,),
                      Text("This course will help you.", style: descMyCourses(color: Colors.black)),
                      Row(
                        children: [
                          Text("12 Exercises", style: decsCourses(color: Colors.black)), // Perhatikan nama fungsi descCourses
                          SizedBox(width: screenWidth * 0.006),
                          Icon(
                            Icons.access_time,
                            size: screenWidth *0.04, // Adjust the size as needed
                          ),
                          Text("11min 20sec", style: decsCourses(color: Colors.black)), // Perhatikan nama fungsi descCourses
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
