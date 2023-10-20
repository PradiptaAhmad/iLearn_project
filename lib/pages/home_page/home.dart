import 'package:flutter/material.dart';

import '../../core/themes.dart';
import 'widget/header_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          child: ListView(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/bgheader.png",
                    width: screenWidth,
                    height: 250,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.39),
                    padding: EdgeInsets.only(top: screenHeight * 0.05),
                    width: screenWidth,
                    height: screenHeight * 0.29,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Course Library", style: subTitle()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between
                          children: [
                            Text("For You", style: subTitle()),
                            TextButton(
                              onPressed: () {},
                              child: Text("See All >", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black)),
                            ),
                          ],
                        ),
                        Text("Based on your topic interests", style: decsSubTitle()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between
                          children: [
                            Text("My Courses", style: subTitle()),
                            TextButton(
                              onPressed: () {},
                              child: Text("See All >", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between
                          children: [
                            Text("Discover New Things", style: subTitle()),
                            TextButton(
                              onPressed: () {},
                              child: Text("See All >", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: screenHeight * 0.205),
                      width: screenWidth * 0.75,
                      height: screenHeight * 0.17,
                      child: HeaderCard(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
