import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/bindings/splashB.dart';
import 'package:ilearn_project/data/news.dart';
import 'package:ilearn_project/pages/foryou_page/foryou.dart';
import 'package:ilearn_project/pages/news_page/detail_news_page.dart';
import 'package:ilearn_project/pages/news_page/news_page.dart';
import 'package:ilearn_project/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ilearn_project/routes/route_name.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DetailNewsPage(),
      // getPages: AppPages.pages,
      // initialRoute: RouteName.splash,
      // initialBinding: SplashB(),
    );
  }
}

