import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/news_page/widget/detail_card_news.dart';

import '../../core/themes.dart';
import '../../data/news.dart';

class DetailNewsPage extends StatelessWidget {
  // final List<News> listNews;

  const DetailNewsPage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // final int index = Get.arguments;
    // final News selectedNews = listNews[index];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:Color(0xFFD9D9D9),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/news/android13.png",
                    width: screenWidth,
                    height: 220, // You can adjust the height as needed
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: screenHeight*0.190),
                      width: screenWidth*0.99,
                      height: screenHeight*0.8,
                      child: DetailCardNews(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
