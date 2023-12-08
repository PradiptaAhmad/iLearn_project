import 'package:get/get.dart';
import 'package:ilearn_project/core/navbar/bottomnavbar.dart';
import 'package:ilearn_project/core/navbar/navbar_binding.dart';
import 'package:ilearn_project/pages/index.dart';
import 'package:ilearn_project/routes/route_name.dart';


class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: RouteName.login,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: RouteName.register, 
      page: () => RegisterPageView(),
      binding: RegisterBinding()
    ),
    GetPage(
        name: RouteName.onBoarding,
        page: () => OnBoardingPageView(),
        binding: OnBoardBinding()),
    GetPage(
        name: RouteName.splash,
        page: () => SplashScreenView(),
        binding: SplashBinding()),
    GetPage(
        name: RouteName.home,
        page: () => HomePageView(),
        binding: HomepageBinding()
    ),
    // GetPage(
    //     name: RouteName.courses,
    //     page: () => MyCoursesPage()),
    GetPage(
        name: RouteName.news,
        page: () => NewsPageView(listNews: []),
        binding: NewsPageBinding()),
    // GetPage(name: RouteName.detailNews,
    //     page: () => DetailNewsPageView()
    //     binding: Detailnewspagebi),
    GetPage(
        name: RouteName.profile,
        page: () => ProfilePageView(),
        binding: ProfileBinding()),
    GetPage(
        name: RouteName.foryou,
        page: () => ForYouPageView(),
        binding: ForyouPageBinding(),
    ),
    GetPage(
      name: RouteName.detail_course,
      page: () => DetailCourseView(),
      binding: DetailCourseBinding(),
    ),
    // GetPage(name: RouteName.detail_course, page: ())

    // GetPage(name: RouteName.video, page: () => VideoView(), binding: VideoB())
    GetPage(
      name: RouteName.navbar,
      page: () => Navbar(),
      binding: NavbarBinding(),
    ),

    GetPage(
      name: RouteName.payment,
      page: () => PaymentPageView(),
      binding: PaymentPageBinding(),
    )
  ];
}


