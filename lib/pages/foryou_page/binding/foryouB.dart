import 'package:get/get.dart';

import '../foryou_controller/foryou_controller.dart';


class ForyouB extends Bindings{
  @override
  void dependencies() {
    Get.put(ForyouController());
  }

}