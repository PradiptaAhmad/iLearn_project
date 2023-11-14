import 'package:get/get.dart';
import 'package:ilearn_project/bindings/detailB.dart';
import 'package:ilearn_project/bindings/foryouB.dart';
import 'package:ilearn_project/bindings/homepageB.dart';
import 'package:ilearn_project/bindings/loginB.dart';
import 'package:ilearn_project/bindings/onBoardB.dart';
import 'package:ilearn_project/bindings/registerB.dart';
import 'package:ilearn_project/bindings/splashB.dart';
import 'package:ilearn_project/bindings/videoB.dart';
import 'package:ilearn_project/pages/detail_course/detail_course.dart';
import 'package:ilearn_project/pages/foryou_page/foryou.dart';
import 'package:ilearn_project/pages/home_page/home.dart';
import 'package:ilearn_project/pages/login_page/login.dart';
import 'package:ilearn_project/pages/news_page/detail_news_page.dart';
import 'package:ilearn_project/pages/onboarding/onboard.dart';
import 'package:ilearn_project/pages/register_page/register.dart';
import 'package:ilearn_project/pages/splash_screen/splash.dart';
import 'package:ilearn_project/pages/video_player/video_view.dart';
import 'package:ilearn_project/routes/route_name.dart';
import '../pages/mycourses_page/mycourses.dart';
import '../pages/news_page/news_page.dart';
import '../pages/profile_page/profile.dart';

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


