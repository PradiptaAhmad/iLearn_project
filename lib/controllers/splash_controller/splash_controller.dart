import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {

  void delayed(VoidCallback? delay) {
    Future.delayed(Duration(seconds: 2), delay);
  }
  void RoutingPage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();


    bool? isFirstTime = prefs.getBool("isFirstTime");
    bool? isLogin = prefs.getBool("isLogin");

    if (isFirstTime == null || isFirstTime == true) {
      prefs.setBool("isFirstTime", false);
      Future.delayed(Duration(seconds: 2), () {
        delayed(() {
          Get.offAllNamed("/login");
        });
      });
    } else {
      delayed(() {
        Get.offAllNamed("/onboarding");
      });
    }
  }
}
