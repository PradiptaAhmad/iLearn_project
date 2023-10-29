import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/routes/route_name.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    writeToSharedPreference();
    super.onInit();
  }
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

  Future<bool> userLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.value, password: password.value);
          writeToSharedPreference();
          Get.offAllNamed(RouteName.home);
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        print('No user found for that email.');
        return false;
      }
    }
    return true;
  }

  Future<void> writeToSharedPreference() async {
    // Intialize SharedPreference
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("isLogin", true);
  }
}
