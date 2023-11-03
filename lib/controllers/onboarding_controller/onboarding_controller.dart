import 'package:get/get.dart';
import 'package:ilearn_project/routes/route_name.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingController extends GetxController {

  var currentPage = 0.obs;

  void switchToLoginPage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isNotFirstName", true);
    Get.offAllNamed(RouteName.login);
  }
}
