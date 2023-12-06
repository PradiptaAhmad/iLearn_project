import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/models/news_model.dart';

import '../controller/homepage_controller.dart';

class NewsCard extends GetView<HomepageController> {
  NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return FutureBuilder<List<NewsModel>>(
      future: controller.getNewsData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          List<NewsModel> newss = snapshot.data!;
          return ListView.builder(
            itemCount: newss.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int i) {
              NewsModel news = newss[i];
              return Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.2,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(0, 5),
                  )
                ]),
                margin: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Container(
                      width: screenWidth * 0.4,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage("${news.banner}"),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.all(12),
                          child: Text(
                            "${news.date}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.4,
                          margin: EdgeInsets.only(left: 12),
                          child: Text(
                            "${news.title}",
                            style: titleCard(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: screenHeight * 0.03, left: 12),
                          child: Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                child: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(news.author_picture!),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                child: Text(
                                  "${news.author_name}",
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
