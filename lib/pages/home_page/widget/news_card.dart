import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilearn_project/core/themes.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return ListView.builder(
      itemCount: 7,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
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
                        image: AssetImage("assets/images/news.jpg"),
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
                      "20 Oktober 2019",
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
                      "Viral Programmer ini dikira ngepet padahal dia yang ngurus server di rusia",
                      style: titleCard(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.03, left: 12),
                    child: Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/avatar.png"),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Text(
                            "John Doe",
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
  }
}
