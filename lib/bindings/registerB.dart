import 'package:get/get.dart';
import 'package:ilearn_project/controllers/register_controller/registerC.dart';

class RegisterB extends Bindings {
  @override
  void dependencies() {
    Get.put(RegisterC());
  }
}