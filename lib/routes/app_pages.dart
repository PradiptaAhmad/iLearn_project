import 'package:get/get.dart';
import 'package:ilearn_project/bindings/loginB.dart';
import 'package:ilearn_project/bindings/onBoardB.dart';
import 'package:ilearn_project/bindings/registerB.dart';
import 'package:ilearn_project/bindings/splashB.dart';
import 'package:ilearn_project/pages/login_page/login.dart';
import 'package:ilearn_project/pages/onboarding/onboard.dart';
import 'package:ilearn_project/pages/register_page/register.dart';
import 'package:ilearn_project/pages/splash_screen/splash.dart';
import 'package:ilearn_project/routes/route_name.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.login,
      page: () => Login(),
      binding: LoginB(),
    ),
    GetPage(
      name: RouteName.register, 
      page: () => Register(),
      binding: RegisterB()
    ),
    GetPage(name: RouteName.onBoarding, page: () => OnBoarding(), binding: OnBoardB()),
    GetPage(name: RouteName.splash, page: () => SplashScreen(), binding: SplashB())
  ];
}
