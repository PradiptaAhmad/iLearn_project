import 'package:flutter/material.dart';

import '../../../core/themes.dart';
import '../../../data/news.dart';

class CategoryNews extends StatelessWidget {
  final List<News> newsList;

  const CategoryNews({Key? key, required this.newsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> newsCategories = newsList.map((news) => news.category).toSet().toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (String category in newsCategories)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: primaryColor), // Tambahkan border dengan warna primaryColor
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.star_border_outlined),
                  Text(category, style: txtCategory()),
                ],
              ),
            )
        ],
      ),
    );
  }
}
