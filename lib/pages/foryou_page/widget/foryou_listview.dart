import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/models/course_model.dart';

import '../controller/foryou_controller.dart';

class ForyouList extends GetView<ForyouPageController> {
  ForyouList({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder<List<CourseModel>>(
      future: controller.fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          List<CourseModel> courses = snapshot.data!;
          return ListView.builder(
              itemCount: courses.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, index) {
                CourseModel course = courses[index];
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
                              image: NetworkImage(course.banner!),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      width: screenWidth * 0.6,
                      child: Column(children: [
                        Text(
                          course.title!,
                          style: titleCard(size: 14, color: Colors.black),
                        ),
                        Text(
                          course.description!,
                          style: subTitleCard(color: primaryColor),
                        ),
                        Spacer(),
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text("Rp. ${course.price}",
                              style: priceCourses()),
                        )
                      ]),
                    ),
                  ]),
                );
              });
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
