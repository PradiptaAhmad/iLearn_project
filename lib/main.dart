import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/login_page/login.dart';
import 'package:ilearn_project/pages/register_page/register.dart';
import 'package:ilearn_project/routes/app_pages.dart';

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
      home: Register(),
    );
  }
}

