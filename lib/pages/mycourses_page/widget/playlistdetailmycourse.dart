import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class PlaylistMyCourses extends StatelessWidget {
  const PlaylistMyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
            padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.01,
                horizontal: screenWidth * 0.03
            ),
            // decoration : BoxDecoration(
            //   border: Border.all(
            //     width: 0.0,
            //   ),
            //   borderRadius: BorderRadius.circular(8.0), // Adjust the border radius as needed
            // ),
            child: SingleChildScrollView(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0), // Adjust the border radius as needed
                    child: Image.asset("assets/images/design.png", width: 70,)
                  ),
                  SizedBox(width: screenWidth*0.03,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Setup Graphic Design ", style: titlePlaylist(color: Colors.black),),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          Text("11 min 20 sec ", style: descPlaylist(color: Colors.black),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: screenWidth*0.18),
                  Align(
                    alignment: Alignment.centerRight, // Menyusun ke kanan tengah
                    child: Column(
                      children: [
                        Icon(Icons.menu),
                        Icon(Icons.play_circle_outline),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    // return Padding(
    //   padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.02),
    //   child: Row(
    //     children: [
    //       Image.asset("assets/images/design.png", width: 70,),
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text("Setup Graphic Design", style: titlePlaylist(color: Colors.black),),
    //           Text("Setup Graphic Design", style: descPlaylist(color: Colors.black),),
    //         ],
    //       ),
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.end, // Align the icons to the right
    //         children: [
    //           Icon(Icons.menu),
    //           Icon(Icons.play_circle)
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
