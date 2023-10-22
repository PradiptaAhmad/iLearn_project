import 'package:get/get.dart';
import 'package:ilearn_project/bindings/loginB.dart';
import 'package:ilearn_project/pages/login_page/login.dart';
import 'package:ilearn_project/pages/register_page/register.dart';
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
      page: () => Register()
    ),

  ];
}
