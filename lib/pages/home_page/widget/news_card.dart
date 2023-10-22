import 'package:flutter/material.dart';
import 'package:ilearn_project/data/news.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 8; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.02, // Adjust as needed
                horizontal: screenWidth * 0.02, // Adjust as needed
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(screenHeight * 0.025), // Adjust as needed
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: screenHeight * 0.008,
                    offset: Offset(0, screenHeight * 0.004),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenHeight * 0.025),
                      ),
                      child: Image.asset("assets/news/bird.png"),
                    ),
                    Text("Lorem Ipsum", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                    Text("Lorem Ipsum", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 8),),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
