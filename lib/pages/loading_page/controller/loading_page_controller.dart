import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/loading_page/widget/ondoneloading.dart';
import 'package:ilearn_project/pages/loading_page/widget/onloading.dart';

class LoadingPageController extends GetxController{

  // widget obs
  Rx<Widget?> loadingWidget = Rx<Widget?>(null);

  Future<void> initLoad() async {
    loadingWidget.value = OnLoadingView(gif: "assets/gif/payment_load.json");
    Future.delayed(Duration(seconds: 3), () {
      loadingWidget.value = OnDoneLoading(gif: "assets/gif/success.json", text: "Payment Confirmed");
    });
  }


  @override
  void onInit() {
    // TODO: implement onInit
    initLoad();
    super.onInit();
  }
}