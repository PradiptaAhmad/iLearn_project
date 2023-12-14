import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/models/course_model.dart';

class DetailCourseController extends GetxController {
  var isBuyed = false.obs;

  var youtube_link = "".obs;
  var courseId = ''.obs;

  late CourseModel  course;

  @override
  void onInit() {
    Future.delayed(Duration(seconds: 1), () {
      getBuyInfo();
    });
    super.onInit();
  }

  void getBuyInfo() async {
    String? email = FirebaseAuth.instance.currentUser!.email;
    final snapshot = await FirebaseFirestore.instance
        .collection('transaction')
        .where('courseId', isEqualTo: courseId.value)
        .where('email', isEqualTo: email!)
        .get();
        print(courseId.value);
    if (snapshot.docs.isNotEmpty) {
      isBuyed.value = true;
    }
  }

}
