import 'package:flutter/material.dart';
import 'package:ilearn_project/pages/home_page/widget/header_card.dart';
import 'package:ilearn_project/pages/home_page/widget/news_card.dart';
import 'package:ilearn_project/pages/onboarding/onboard.dart';

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
      home: HomePage(),
    );
  }
}

