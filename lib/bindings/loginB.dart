import 'package:get/get.dart';
import 'package:ilearn_project/controllers/login_controller/loginPageController.dart';

class LoginB extends Bindings{
  @override
  void dependencies() {
    Get.put(LoginPageController());
    // TODO: implement dependencies
  }

  
}