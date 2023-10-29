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
    SharedPreferences prefs = await SharedPreferences.getInstance();


    bool? isNotFirstTime= prefs.getBool("isNotFirstTime");
    bool? isLogin = prefs.getBool("isLogin");
    print(isLogin);
    print(isNotFirstTime);

    if (isNotFirstTime == null || isNotFirstTime == false) {
      prefs.setBool("isNotFirstTime", true);
      Future.delayed(Duration(seconds: 2), () {
        delayed(() {
          Get.offAllNamed(RouteName.onBoarding);
        });
      });
    } else if (isLogin == false || isLogin == null) {
      delayed(() {
        Get.offAllNamed(RouteName.login);
      });
    } else if (isLogin == true) {
      delayed(() {
        Get.offAllNamed(RouteName.home);
      });
    }
  }
}
