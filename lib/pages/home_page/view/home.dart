import 'package:flutter/material.dart';
import 'package:ilearn_project/pages/home_page/widget/category.dart';
import 'package:ilearn_project/pages/home_page/widget/courses_card.dart';
import 'package:ilearn_project/pages/home_page/widget/news_card.dart';
import 'package:ilearn_project/pages/home_page/widget/searchbar.dart';

import '../../../core/themes.dart';
import '../widget/header_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   flexibleSpace:
      //   AppBar(),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.4,
              color: pinkMuda,
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 12, top: 50),
                      child: Text(
                        "Start Learning",
                        style: titlePage(),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 12, top: 50),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/avatar.png"),
                      ),
                    )
                  ]),
                  Container(
                    width: screenWidth * 0.95,
                    margin: EdgeInsets.only(top: screenHeight * 0.02),
                    height: 50,
                    child: SearchWidget(),
                  ),
                  Container(
                      height: 150,
                      width: screenWidth,
                      margin: EdgeInsets.only(
                        top: 30,
                      ),
                      child: HeaderCard()),
                ],
              ),
            ),

          
            Container(
              margin: EdgeInsets.only(left: 12, top: 10),
              child: Text(
                "Course Library",
                style: subTitle(),
              ),
            ),
            Category(),
            Container(
              margin: EdgeInsets.only(
                left: 12,
              ),
              child: Row(
                children: [
                  Text("For You", style: subTitle()),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text("See All >",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black)),
                  ),
                ],
              ),
            ),
            // Text("Based on your topic interests", style: decsSubTitle()),
            ForYou(),
            Container(
              margin: EdgeInsets.only(
                left: 12,
              ),
              child: Row(
                children: [
                  Text("Discover New Things", style: subTitle()),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text("See All >",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black)),
                  ),
                ],
              ),
            ),
            NewsCard(),
          ],
        ),
      ),
    );
  }
}
