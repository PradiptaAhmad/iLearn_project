import 'package:get/get.dart';

class LoginPageController extends GetxController {
  var isObsecure = true.obs;

  void setObsecure() {
    isObsecure.value = !isObsecure.value;
  }
}
