
import 'package:get/get.dart';

import '../controller/detail_controller.dart';

class DetailCourseBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<DetailCourseController>(() => DetailCourseController());
  }
}