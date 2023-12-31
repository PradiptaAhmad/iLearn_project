import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/index.dart';

class LoadingPageView extends GetView<LoadingPageController> {
  const LoadingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => controller.loadingWidget.value!));
  }
}
