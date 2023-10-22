import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class RegisterC extends GetxController {
  var isObsecure = true.obs;

  // data pengguna
  var first_name = ''.obs;
  var last_name = ''.obs;
  var email = ''.obs;
  var password = ''.obs;

  void setObsecure() {
    isObsecure.value = !isObsecure.value;
  }

  Future<String> createUser() async {
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
        return "email-already-in-use";
      }
    } catch (e) {
      print(e);
    }
    return "";
  }
}
