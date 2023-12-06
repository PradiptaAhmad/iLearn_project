import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/models/course_model.dart';
import 'package:ilearn_project/pages/detail_course/widget/courslist_widget.dart';

import '../controller/detail_controller.dart';


class Playlist extends GetView<DetailCourseController> {
  // final data = Get.arguments;

  Playlist({super.key});

  @override
  Widget build(BuildContext context) {
    // controller.courseId.value = data.id;
    List<Courses> courses = controller.course.course!;
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
