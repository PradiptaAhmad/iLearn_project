import 'package:get/get.dart';
import 'package:ilearn_project/pages/index.dart';

class NavbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomepageController>(() => HomepageController());
    // Get.lazyPut(() => )
  }
}