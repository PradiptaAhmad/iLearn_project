import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/home_page/binding/homepageB.dart';
import 'package:ilearn_project/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ilearn_project/routes/route_name.dart';
import 'core/navbar/bottomnavbar.dart';
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
      home: Navbar(),
      getPages: AppPages.pages,
      initialRoute: RouteName.home,
      initialBinding: HomepageB(),
    );
  }
}






