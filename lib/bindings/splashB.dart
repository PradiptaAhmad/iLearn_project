import 'package:get/get.dart';
import 'package:ilearn_project/controllers/splash_controller/splash_controller.dart';

class SplashB extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}