import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/payment_page/widget/clicked_payment_tile.dart';
import 'package:ilearn_project/pages/payment_page/widget/payment_card.dart';

class PaymentPageController extends GetxController {
  Rx<Widget?> walletWidget = Rx<Widget?>(null);
  late Widget bankWigdet;

  @override
  void onInit() {
    // TODO: implement onInit
    initWidget();
    super.onInit();
  }

  Future<void> initWidget() async {
    walletWidget.value = Row(children: [
      PaymentCard(image: "assets/images/payment/dana.svg", title: "Dana"),
      PaymentCard(image: "assets/images/payment/gopay.svg", title: "Gopay"),
      PaymentCard(image: "assets/images/payment/ovo.svg", title: "Ovo"),
      PaymentCard(
          image: "assets/images/payment/shopeepay.svg", title: "Shopee"),
      PaymentCard(image: "assets/images/payment/jenius.svg", title: "Jenius"),
    ]);
  }

  Future<void> updateWidget(String title) async {
    switch (title) {
      case "Dana":
        {
          walletWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/dana.svg",
              title: "Dana",
              description: "Pembayaran Menggunakan Dana");
        }
      default:
        {
          walletWidget.value = Container(
            child: Center(child: Text("An Error Occured")),
          );
        }
    }
  }
}
