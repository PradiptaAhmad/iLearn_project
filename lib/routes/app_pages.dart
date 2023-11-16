import 'package:get/get.dart';

import 'package:ilearn_project/pages/detail_course/binding/detailB.dart';
import 'package:ilearn_project/pages/foryou_page/binding/foryouB.dart';
import 'package:ilearn_project/pages/home_page/binding/homepageB.dart';
import 'package:ilearn_project/pages/login_page/binding/loginB.dart';
import 'package:ilearn_project/pages/onboarding/binding/onBoardB.dart';
import 'package:ilearn_project/pages/splash_screen/binding/splashB.dart';
import 'package:ilearn_project/pages/video_player/binding/videoB.dart';
import 'package:ilearn_project/pages/detail_course/view/detail_course.dart';
import 'package:ilearn_project/pages/foryou_page/view/foryou.dart';
import 'package:ilearn_project/pages/home_page/view/home.dart';
import 'package:ilearn_project/pages/login_page/view/login.dart';
import 'package:ilearn_project/pages/news_page/view/detail_news_page.dart';
import 'package:ilearn_project/pages/onboarding/view/onboard.dart';
import 'package:ilearn_project/pages/register_page/view/register.dart';
import 'package:ilearn_project/pages/splash_screen/view/splash.dart';
import 'package:ilearn_project/pages/video_player/view/video_view.dart';
import 'package:ilearn_project/routes/route_name.dart';
import '../pages/mycourses_page/view/mycourses.dart';
import '../pages/news_page/view/news_page.dart';
import '../pages/profile_page/view/profile.dart';
import '../pages/register_page/binding/registerB.dart';

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
    GetPage(
        name: RouteName.onBoarding,
        page: () => OnBoarding(),
        binding: OnBoardB()),
    GetPage(
        name: RouteName.splash,
        page: () => SplashScreen(),
        binding: SplashB()),
    GetPage(
        name: RouteName.home,
        page: () => HomePage(),
        binding: HomepageB()
    ),
    GetPage(
        name: RouteName.courses,
        page: () => MyCoursesPage()),
    GetPage(
        name: RouteName.news,
        page: () => NewsPage(listNews: [],)),
    GetPage(name: RouteName.detailNews,
        page: () => DetailNewsPage()),
    GetPage(
        name: RouteName.profile,
        page: () => ProfilePage()),
    GetPage(
        name: RouteName.foryou,
        page: () => ForYou(),
        binding: ForyouB(),
    ),
    GetPage(
      name: RouteName.detail_course,
      page: () => DetailCourse(),
      binding: DetailB(),
    ),
    // GetPage(name: RouteName.detail_course, page: ())

    GetPage(name: RouteName.video, page: () => VideoView(), binding: VideoB())
  ];
}


