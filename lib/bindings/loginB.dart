import 'package:get/get.dart';
import 'package:ilearn_project/controllers/loginPageController.dart';

class LoginB implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginPageController());
  }
}