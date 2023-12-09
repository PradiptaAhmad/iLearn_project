import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/index.dart';

class SplashScreenView extends GetView<SplashController> {
  SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: FlutterLogo(size: 340,)),
    );
  }
}