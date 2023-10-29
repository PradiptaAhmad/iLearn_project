import 'package:get/get.dart';
import 'package:ilearn_project/controllers/onboarding_controller/onboarding_controller.dart';

class OnBoardB extends Bindings {
  @override
  void dependencies() {
    Get.put(OnBoardingController());
  }
}