import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/bindings/loginB.dart';
import 'package:ilearn_project/pages/login_page/login.dart';
import 'package:ilearn_project/pages/onboarding/onboard.dart';
import 'package:ilearn_project/pages/profile_page/profile.dart';
import 'package:ilearn_project/routes/app_pages.dart';
import 'data/news.dart';
import 'pages/home_page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppPages.pages,
      home: OnBoarding(),
    );
  }
}

