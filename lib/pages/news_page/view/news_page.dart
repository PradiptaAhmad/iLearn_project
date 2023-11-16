import 'package:flutter/material.dart';
import 'package:ilearn_project/pages/news_page/widget/cattegory_news.dart';
import 'package:ilearn_project/pages/news_page/widget/news_card.dart';
import 'package:ilearn_project/pages/news_page/widget/news_trending_card.dart';

import '../../../core/appBar/appbarcustom.dart';
import '../../../core/themes.dart';
import '../data/news.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key, required List<News> listNews});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBarCustom(
              textColor: Colors.black,
              showSearchBar: true,
              appBarText: 'News',
              showProfileImage: false,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Trending News", style: subTitle()),
                      TextButton(
                        onPressed: () {},
                        child: Text("See All >", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black)),
                      ),
                    ],
                  ),
                  TrendingNewsCard(trendingNews: trendingNews,),
                  CategoryNews(newsList: news,),
                  CardNewsPage(listNews: news,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
