import 'package:get/get.dart';

import '../controller/login_controller.dart';

class LoginPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginPageController>(() => LoginPageController());
    // TODO: implement dependencies
  }

  
}