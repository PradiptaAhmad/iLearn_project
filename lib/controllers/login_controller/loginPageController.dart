import 'package:get/get.dart';

class LoginPageController extends GetxController {
  // variabel set obsecureText
  var isObsecure = true.obs;

  // Variable data pengguna
  var email = ''.obs;
  var password = ''.obs;

  // Validator variable
  var isEmailValid = false.obs;
  var isPasswordValid = false.obs;
  
  // Email RegExp
  final emailRegex = RegExp(
    r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
  );
  bool isAllValid() {
    if (isEmailValid.value == true && isPasswordValid.value == true) {
      return true;
    } else {
      return false;
    }
  }
  void setObsecure() {
    isObsecure.value = !isObsecure.value;
  }
}
