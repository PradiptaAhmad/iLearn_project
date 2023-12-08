import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/payment_page/widget/clicked_payment_tile.dart';
import 'package:ilearn_project/pages/payment_page/widget/payment_card.dart';

class PaymentPageController extends GetxController {
  Rx<Widget?> walletWidget = Rx<Widget?>(null);
  Rx<Widget?> bankWidget = Rx<Widget?>(null);

  @override
  void onInit() {
    // TODO: implement onInit
    initWidget();
    super.onInit();
  }

  Future<void> initWidget() async {
    walletWidget.value = Row(children: [
      PaymentCard(image: "assets/images/payment/dana.svg", title: "Dana",),
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
      case "Gopay":
        {
          walletWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/gopay.svg",
              title: "Gopay",
              description: "Pembayaran Menggunakan Gopay");
        }
      case "Ovo":
        {
          walletWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/ovo.svg",
              title: "OVO",
              description: "Pembayaran Menggunakan OVO");
        }
      case "Shopee":
        {
          walletWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/shopeepay.svg",
              title: "Shopee Pay",
              description: "Pembayaran Menggunakan Shopee Pay");
        }
      case "Jenius":
        {
          walletWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/jenius.svg",
              title: "Jenius Pay",
              description: "Pembayaran Menggunakan Jenius Pay");
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
