import 'package:get/get.dart';
import 'package:ilearn_project/controllers/register_controller/register_controller.dart';

class RegisterB extends Bindings {
  @override
  void dependencies() {
    Get.put(RegisterC());
  }
}