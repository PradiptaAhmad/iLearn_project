import 'package:get/get.dart';
import 'package:ilearn_project/pages/foryou_page/controller/foryou_controller.dart';

class ForyouPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ForyouPageController>(() => ForyouPageController());
  }

}