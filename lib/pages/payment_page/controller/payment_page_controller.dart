import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/models/course_model.dart';
import 'package:ilearn_project/models/transaction_model.dart';
import 'package:ilearn_project/pages/payment_page/widget/clicked_payment_tile.dart';
import 'package:ilearn_project/pages/payment_page/widget/payment_card.dart';

class PaymentPageController extends GetxController {
  Rx<Widget?> walletWidget = Rx<Widget?>(null);
  Rx<Widget?> bankWidget = Rx<Widget?>(null);
  Rx<Widget?> kiosWidget = Rx<Widget?>(null);

  var isDebitClicked = false.obs;
  var isPaymentSelected = false.obs;


  // init Data
  late final CourseModel courseModel; // Declare it here
  var paymentMethod = "".obs;
  final email = FirebaseAuth.instance.currentUser!.email!;
  @override
  void onInit() {

    courseModel = Get.arguments[0];

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
    bankWidget.value = Row(
      children: [
        PaymentCard(image: "assets/images/payment/bca.svg", title: "BCA"),
        PaymentCard(image: "assets/images/payment/bni.svg", title: "BNI"),
        PaymentCard(image: "assets/images/payment/bri.svg", title: "BRI"),
        PaymentCard(
            image: "assets/images/payment/mandiri.svg", title: "Mandiri"),
        PaymentCard(
            image: "assets/images/payment/permata.svg", title: "Permata")
      ],
    );
    kiosWidget.value = Row(
      children: [
        PaymentCard(
            image: "assets/images/payment/indomaret.svg", title: "Indomaret"),
        PaymentCard(
            image: "assets/images/payment/alfamart.svg", title: "Alfamart"),
        PaymentCard(image: "assets/images/payment/pos.svg", title: "POS"),
      ],
    );
  }

  Future<void> updateWidget(String title) async {
    switch (title) {
      case "Dana":
        {
          walletWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/dana.svg",
              title: "Dana",
              description: "Pembayaran Menggunakan Dana");
          paymentMethod.value = "Dana";
        }
      case "Gopay":
        {
          walletWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/gopay.svg",
              title: "Gopay",
              description: "Pembayaran Menggunakan Gopay");
          paymentMethod.value = "Gopay";
        }
      case "Ovo":
        {
          walletWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/ovo.svg",
              title: "OVO",
              description: "Pembayaran Menggunakan OVO");
          paymentMethod.value = "OVO";
        }
      case "Shopee":
        {
          walletWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/shopeepay.svg",
              title: "Shopee Pay",
              description: "Pembayaran Menggunakan Shopee Pay");
          paymentMethod.value = "Shopee";
        }
      case "Jenius":
        {
          walletWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/jenius.svg",
              title: "Jenius Pay",
              description: "Pembayaran Menggunakan Jenius Pay");
          paymentMethod.value = "Jenius Pay";
        }
      case "BCA":
        {
          bankWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/bca.svg",
              title: "Virtual Account BCA",
              description: "Pembayaran Menggunakan Virtual Account BCA");
          paymentMethod.value = "Transfer Virtual Account BCA";
        }
      case "BNI":
        {
          bankWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/bni.svg",
              title: "Virtual Account BNI",
              description: "Pembayaran Menggunakan VIrtual Account BNI");
          paymentMethod.value = "Transfer Virtual Account BNI";
        }
      case "BRI":
        {
          bankWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/bri.svg",
              title: "Virtual Account BRI",
              description: "Pembayaran Menggunakan VIrtual Account BRI");
          paymentMethod.value = "Transfer Virtual Account BRI";
        }
      case "Mandiri":
        {
          bankWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/mandiri.svg",
              title: "Virtual Account Mandiri",
              description: "Pembayaran Menggunakan VIrtual Account Mandiri");
          paymentMethod.value = "Transfer Virtual Account Mandiri";
        }
      case "Permata":
        {
          bankWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/permata.svg",
              title: "Virtual Account Permata",
              description: "Pembayaran Menggunakan VIrtual Account Permata");
          paymentMethod.value = "Transfer Virtual Account Permata";
        }
      case "Indomaret":
        {
          kiosWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/indomaret.svg",
              title: "Indomaret",
              description: "Pembayaran Menggunakan Indomaret");
          paymentMethod.value = "Indomaret";
        }
      case "Alfamart":
        {
          kiosWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/alfamart.svg",
              title: "Indomaret",
              description: "Pembayaran Menggunakan Alfamart");
          paymentMethod.value = "Alfamart";
        }
      case "POS":
        {
          kiosWidget.value = ClickedPaymentTile(
              image: "assets/images/payment/pos.svg",
              title: "Kantor POS",
              description: "Pembayaran Menggunakan Kantor POS");
          paymentMethod.value = "POS Indonesia";
        }
      default:
        {
          walletWidget.value = Container(
            child: Center(child: Text("An Error Occured")),
          );
        }
    }
  }

  Future<void> navigateToNamedPage(String page) async {
    Get.toNamed(page);
  }
  
  Future<void> writeToFirestore({TransactionModel? transactionModel}) async {
    final result = await FirebaseFirestore.instance
        .collection("transaction")
        .add(transactionModel!.toJson());
    await result.update({"id": result.id});
  }
}
