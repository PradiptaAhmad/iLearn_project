import 'package:get/get.dart';
import 'package:ilearn_project/routes/route_name.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingController extends GetxController {
  void onDone() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isFirstTime", false);
    Get.offAllNamed(RouteName.login);
  }
}
