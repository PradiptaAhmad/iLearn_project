import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/core/themes.dart';

import '../../../data/news.dart';
import '../../../routes/route_name.dart';
import 'btnIconNews.dart';

class CardNewsPage extends StatelessWidget {
  final List<News> listNews;

  const CardNewsPage({Key? key, required this.listNews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.35,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: listNews.length,
        itemBuilder: (BuildContext context, int index) {
          News news = listNews[index];
          return GestureDetector(
            onTap: () => Get.toNamed(RouteName.detailNews, arguments: index),
              child: Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
              child: Container(
                height: screenHeight * 0.10,
                width: screenWidth * 0.32,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      child: Image.asset(news.image, width: screenWidth * 0.3, height: screenHeight * 0.3),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(news.date, style: dateNewsCard()),
                          Text(
                            news.name,
                            style: titleNewsCard(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Row(
                            children: [
                              btnIconNews(text: news.duration, icon: Icons.access_time),
                              SizedBox(width: screenWidth * 0.06),
                              btnIconNews(text: news.views.toString(), icon: Icons.remove_red_eye),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
