import 'package:get/get.dart';
import 'package:ilearn_project/controllers/home_controller/homepage_controller.dart';

class HomepageB extends Bindings {
  @override
  void dependencies() {
    Get.put(HomepageController());
  }
}
