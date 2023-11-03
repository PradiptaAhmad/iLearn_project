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
            width: screenWidth * 0.9, // Set the width of the Container
            padding: EdgeInsets.symmetric(
              vertical: screenHeight * 0.02,
              horizontal: screenWidth * 0.05,
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
                  SizedBox(width: screenWidth * 0.04),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Graphic Design", style: titlePlaylist(color: Colors.black)),
                        SizedBox(height: screenHeight * 0.003),
                        Text("This course will help you.Lorem ispum doler sit amet", style: descMyCourses(color: Colors.black)),
                        SizedBox(height: screenHeight * 0.007),
                        Row(
                          children: [
                            Text("12 Exercises", style: decsCourses(color: Colors.black)),
                            SizedBox(width: screenWidth * 0.006),
                            Icon(
                              Icons.access_time,
                              size: screenWidth * 0.04,
                            ),
                            Text("11min 20sec", style: decsCourses(color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
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
