import 'package:get/get.dart';

import '../home_controller/homepage_controller.dart';

class HomepageB extends Bindings {
  @override
  void dependencies() {
    Get.put(HomepageController());
  }
}
