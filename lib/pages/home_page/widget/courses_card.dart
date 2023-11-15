import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilearn_project/controllers/home_controller/homepage_controller.dart';
import 'package:ilearn_project/models/course_model.dart';
import 'package:ilearn_project/routes/route_name.dart';

import '../../../core/themes.dart';

class ForYou extends StatelessWidget {
  ForYou({Key? key});

  final HomepageController homepageC = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.25,
      child: FutureBuilder<List<CourseModel>>(
        future: homepageC.getCourseData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            List<CourseModel> courses = snapshot.data!;
            return ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: courses.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int i) {
                CourseModel course = courses[i];
                return GestureDetector(
                  onTap: () => Get.toNamed(RouteName.detail_course, arguments: courses[i]),
                  child: Container(
                    width: screenHeight * 0.25,
                    height: 210,
                    margin: EdgeInsets.only(left: 12, bottom: 10),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 108,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            image: DecorationImage(
                                image: NetworkImage(course.banner!),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5, right: 5),
                          child: Text(
                            course.title!,
                            style: titleCard(),
                          ),
                        ),
                        // Container(
                        //   alignment: Alignment.topLeft,
                        //   margin: EdgeInsets.only(left: 10, top: 5),
                        //   child: Text(
                        //     course.description!,
                        //     style: subTitleCard(),
                        //   ),
                        // ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(left: 12, bottom: 5),
                          child: Text(
                            "Rp. ${course.price}",
                            style: GoogleFonts.poppins(
                              color: darkGrey,
                              fontSize: 11,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          } else if(snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: Text("Cannot load data from server"),
            );
          }
        },
      ),
    );
  }
}
