import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/bindings/registerB.dart';
import 'package:ilearn_project/pages/foryou_page/foryou.dart';
import 'package:ilearn_project/pages/foryou_page/foryou_detailpage.dart';
import 'package:ilearn_project/pages/home_page/home.dart';
import 'package:ilearn_project/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ilearn_project/routes/route_name.dart';
import 'firebase_options.dart';
import 'pages/mycourses_page/mycourses_detailpage.dart';

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
      // getPages: AppPages.pages,
      // initialRoute: RouteName.register,
      // initialBinding: RegisterB(),
      home: ForYou(),
    );
  }
}

