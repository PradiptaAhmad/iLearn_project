import 'package:flutter/material.dart';

import '../../data/news.dart';

class DetailNewsPage extends StatelessWidget {
  final List<News> listNews;

  const DetailNewsPage({Key? key, required this.listNews}) : super(key: key);

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
          child: ListView.builder(
            itemCount: listNews.length,
            itemBuilder: (BuildContext context, int index) {
              News news = listNews[index];
                Stack(
                  children: [
                    Image.asset(news.image, width: screenWidth,height: screenHeight*0.3,),
                  ],
                );
            },
          ),
        ),
      ),
    );
  }
}
