import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/models/course_model.dart';
import 'package:ilearn_project/models/news_model.dart';

class HomepageController extends GetxController {

  Future<List<CourseModel>> getCourseData() async {
    final snapshot = await FirebaseFirestore.instance.collection('courses').get();
    final courseData = snapshot.docs.map((e) => CourseModel.fromJson(e.data())).toList();
    return courseData;
  }

  Future<List<NewsModel>> getNewsData() async {
    final snapshot = await FirebaseFirestore.instance.collection('news').get();
    final newsdata =
        snapshot.docs.map((e) => NewsModel.fromJson(e.data())).toList();
    return newsdata;
  }
}
