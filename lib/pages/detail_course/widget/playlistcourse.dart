import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/models/course_model.dart';
import 'package:ilearn_project/pages/detail_course/widget/courslist_widget.dart';

import '../detail_controller/detail_controller.dart';


class Playlist extends StatelessWidget {
  final detailC = Get.find<DetailCourseController>();
  // final data = Get.arguments;

  Playlist({super.key});

  @override
  Widget build(BuildContext context) {
    // detailC.courseId.value = data.id;
    List<Courses> courses = detailC.course.courses!;
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: courses.length,
        itemBuilder: (BuildContext context, int index) {
          Courses cours = courses[index];
          return Container(
            child: CourseListDetail(
              title: cours.title!,
              description: cours.description!,
              link: cours.video_link!,
            ),
          );
        },
      ),
    );
  }
}
