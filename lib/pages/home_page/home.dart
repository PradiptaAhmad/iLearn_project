import 'package:flutter/material.dart';
import 'package:ilearn_project/pages/home_page/widget/category.dart';
import 'package:ilearn_project/pages/home_page/widget/courses_card.dart';
import 'package:ilearn_project/pages/home_page/widget/mycourses_card.dart';
import 'package:ilearn_project/pages/home_page/widget/news_card.dart';

import '../../core/themes.dart';
import 'widget/header_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    margin: EdgeInsets.only(top: screenHeight * 0.42),
                    padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.018),
                    width: screenWidth,
                    height: screenHeight * 0.09,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Course Library", style: subTitle()),
                        Category(),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("For You", style: subTitle()),
                        TextButton(
                          onPressed: () {},
                          child: Text("See All >", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black)),
                        ),
                      ],
                    ),
                    // Text("Based on your topic interests", style: decsSubTitle()),
                    ForYou(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("My Courses", style: subTitle()),
                        TextButton(
                          onPressed: () {},
                          child: Text("See All >", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black)),
                        ),
                      ],
                    ),
                    MyCourses(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Discover New Things", style: subTitle()),
                        TextButton(
                          onPressed: () {},
                          child: Text("See All >", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black)),
                        ),
                      ],
                    ),
                    // NewsCard(), => ntar dluub
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
