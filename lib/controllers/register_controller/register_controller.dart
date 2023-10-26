import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class RegisterC extends GetxController {
  var isObsecure = true.obs;

  // data pengguna
  var first_name = ''.obs;
  var last_name = ''.obs;
  var email = ''.obs;
  var password = ''.obs;


  // form validator
  var isFirstNameValid = false.obs;
  var isEmailValid = false.obs;
  var isPasswordValid = false.obs;
  var isChecked = false.obs;
  
  bool isAllValid() {
    if (isFirstNameValid.value == true &&
        isEmailValid.value == true &&
        isPasswordValid.value == true &&
        isChecked.value == true) {
      return true;
    } else {
      return false;
    }
  }
  void setObsecure() {
    isObsecure.value = !isObsecure.value;
  }

  Future<String> createUserLogin() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return "weak-password";
      } else if (e.code == 'email-already-in-use') {
        isEmailValid.value = false;
        return "email-already-in-use";
      }
    } catch (e) {
      print(e);
    }
    return "";
  }
}
