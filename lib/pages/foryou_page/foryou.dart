import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilearn_project/appBar/searchbar.dart';
import 'package:ilearn_project/core/themes.dart';

import '../../appBar/appbarcustom.dart';

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
        title: Text("For You", style: titlePage()),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          child: Column(
            children: [
              // SizedBox(
              //   height: screenHeight * 0.003,
              // ),
              // Category(),
              // ForYouCard()
              CustomSearchBar(),
              ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    height: screenHeight * 0.15,
                    margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: screenHeight * 0.008,
                          offset: Offset(0, screenHeight * 0.004),
                        ),
                      ],
                    ),
                    child: Row(children: [
                      Container(
                        width: screenWidth * 0.3,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage("assets/images/news.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        width: screenWidth * 0.6,
                        child: Column(children: [
                          Text(
                            "Flutter & Dart - The Complete Guide [2023 Edition]",
                            style: titleCard(),
                          ),
                          Text(
                            "A Complete Guide to the Flutter SDK & Flutter Framework for building native iOS and Android apps",
                            style: subTitleCard(),
                          ),
                          Spacer(),
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Rp. 200.000",
                              style: GoogleFonts.poppins(
                                color: darkGrey,
                                fontSize: 11,
                              ),
                            ),
                          )
                        ]),
                      ),
                    ]),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
