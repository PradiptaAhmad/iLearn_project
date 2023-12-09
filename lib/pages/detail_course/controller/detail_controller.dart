import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/models/course_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailCourseController extends GetxController {
  var isBuyed = false.obs;

  var youtube_link = "".obs;
  var courseId = ''.obs;
  var email = ''.obs;

  late CourseModel  course;

  @override
  void onInit() {
    Future.delayed(Duration(seconds: 1), () {
      getBuyInfo();
    });
    super.onInit();
  }

  void getBuyInfo() async {
    getEmail();
    final snapshot = await FirebaseFirestore.instance
        .collection('transaction')
        .where('courseId', isEqualTo: courseId.value)
        .where('email', isEqualTo: 'pradiptaahmad8@gmail.com')
        .get();
        print(courseId.value);
    if (snapshot.docs.isNotEmpty) {
      isBuyed.value = true;
    }
  }

  void getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    email.value = prefs.getString('email')!;
  }
}
