import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class ForYou extends StatelessWidget {
  const ForYou({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.25,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int i) {
          return Container(
            width: 210,
            height: 210,
            margin: EdgeInsets.only(left: 12, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10), // Adjust as needed
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: screenHeight * 0.008, // Adjust as needed
                  offset: Offset(0, screenHeight * 0.004), // Adjust as needed
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 108,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/course.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    "Learn flutter for beginner with regular price",
                    style: titleCard(),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    "12 Excercises",
                    style: subTitleCard(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
