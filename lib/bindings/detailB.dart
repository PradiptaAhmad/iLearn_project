
import 'package:get/get.dart';
import 'package:ilearn_project/controllers/detail_controller/detail_controller.dart';

class DetailB extends Bindings{
  @override
  void dependencies() {
    Get.put(DetailCourseController());
  }
}