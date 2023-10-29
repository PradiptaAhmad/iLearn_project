import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class Playlist extends StatelessWidget {
  const Playlist({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 40),
              padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.01,
                horizontal: screenWidth * 0.03
              ),
              decoration : BoxDecoration(
                border: Border.all(
                  color: Colors.black, // Border color
                  width: 1.0, // Border width
                ),
                borderRadius: BorderRadius.circular(8.0), // Adjust the border radius as needed
              ),
            child: SingleChildScrollView(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0), // Adjust the border radius as needed
                    child: Image.asset(
                      "assets/images/playlist1.png",
                      width: 70, // Lebar yang diinginkan
                      height: 62, // Tinggi yang diinginkan
                    ),
                  ),
                  SizedBox(width: screenWidth*0.03,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Setup Graphic Design ", style: titlePlaylist(color: Colors.black),),
                      Text("Setup Graphic Design ", style: descPlaylist(color: Colors.black),),
                    ],
                  ),
                  SizedBox(width: screenWidth*0.08),
                  Align(
                    alignment: Alignment.centerRight, // Menyusun ke kanan tengah
                    child: Container(
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: peachColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
