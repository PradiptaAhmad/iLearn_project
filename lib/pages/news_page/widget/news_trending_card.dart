import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/news.dart';

import '../../../core/themes.dart';
import '../../../routes/route_name.dart';
import 'btnIconNews.dart';

class TrendingNewsCard extends StatelessWidget {
  final List<News> trendingNews;

  TrendingNewsCard({Key? key, required this.trendingNews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight * 0.34,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: trendingNews.length,
        itemBuilder: (BuildContext context, int index) {
          News news = trendingNews[index];
          return GestureDetector(
            onTap: () => Get.toNamed(RouteName.detailNews),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              child: Container(
                width: screenWidth * 0.6,
                height: screenHeight * 0.08,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      child: Image.asset(
                        news.image,
                        width: screenWidth * 0.67,
                        height: screenHeight * 0.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(news.name, style: titleNewsCard()),
                    Text(news.date, style: dateNewsCard()),
                    SizedBox(height: screenHeight * 0.01),
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
            ),
          );
        },
      ),
    );

  }
}
