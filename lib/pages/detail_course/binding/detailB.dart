
import 'package:get/get.dart';

import '../detail_controller/detail_controller.dart';

class DetailB extends Bindings{
  @override
  void dependencies() {
    Get.put(DetailCourseController());
  }
}