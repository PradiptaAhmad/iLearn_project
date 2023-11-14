import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/bindings/foryouB.dart';
import 'package:ilearn_project/bindings/homepageB.dart';
import 'package:ilearn_project/pages/foryou_page/foryou_detailpage.dart';
import 'package:ilearn_project/pages/news_page/widget/detail_card_news.dart';
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
      getPages: AppPages.pages,
      home: DetailForYou(),
      // initialRoute: RouteName.home,
      // initialBinding: HomepageB(),
    );
  }
}






