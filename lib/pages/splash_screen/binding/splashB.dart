import 'package:get/get.dart';

import '../splash_controller/splash_controller.dart';

class SplashB extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}