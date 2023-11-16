import 'package:get/get.dart';

import '../onboarding_controller/onboarding_controller.dart';
class OnBoardB extends Bindings {
  @override
  void dependencies() {
    Get.put(OnBoardingController());
  }
}