import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/routes/route_name.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    RoutingPage();
    super.onInit();
  }
  void delayed(VoidCallback? delay) {
    Future.delayed(Duration(seconds: 2), delay);
  }
  void RoutingPage() async {
        print("kontolll");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    User? user = FirebaseAuth.instance.currentUser;

    if (prefs.getString('onboard') == null) {
      Get.offAllNamed(RouteName.onBoarding);
    } else if (user != null) {
      Get.offAllNamed(RouteName.login);
    } else {
      Get.offNamed(RouteName.navbar);
    }

  }
}
