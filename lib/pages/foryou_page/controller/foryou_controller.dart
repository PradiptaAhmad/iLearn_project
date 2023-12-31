import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/models/course_model.dart';

class ForyouPageController extends GetxController {
  Future<List<CourseModel>> fetchData() async {
    final snapshot =
        await FirebaseFirestore.instance.collection('courses').get();
    final courseData =
        snapshot.docs.map((e) => CourseModel.fromJson(e.data())).toList();
    return courseData;
  }
}
