import 'package:get/get.dart';

import '../controller/onboarding_controller.dart';
class OnBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(() => OnBoardingController());
  }
}