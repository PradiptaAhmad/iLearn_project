import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/index.dart';
import 'package:ilearn_project/pages/payment_page/widget/payment_card.dart';
import 'package:ilearn_project/pages/payment_page/widget/payment_option.dart';
import 'package:ilearn_project/pages/payment_page/widget/payment_tile.dart';

class PaymentPageView extends GetView<PaymentPageController> {
  const PaymentPageView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;
    double screenHeight = Get.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment",
          style: titlePage(),
        ),
        centerTitle: true,
        leading:
            IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            "Pilih Cara Bayar Pesanan ",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: figmaFontsize(16)),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Text(
            "Yuk Pilih Cara Bayar Yang Kamu Mau",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: figmaFontsize(14)),
            ),
          ),
        ),
        PaymentTile(
            title: "Dompet Digital",
            isExpanded: true,
            child: Container(
                width: screenWidth * 0.9,
                child: Obx(() =>
                    controller.walletWidget.value ??
                    Container(
                      child: Center(
                        child: Text("An Error Occured"),
                      ),
                    )))),
        PaymentTile(
            title: "Transfer Virtual Account",
            isExpanded: true,
            child: Obx(() =>
                controller.bankWidget.value ??
                Container(
                  child: Center(child: Text("An Error Occured")),
                ))),
        PaymentTile(
          title: "Minimarket/KIOS",
          isExpanded: true,
          child: Obx(
            () =>
                controller.kiosWidget.value ??
                Center(
                  child: Text("An Error Occured"),
                ),
          ),
        ),
        PaymentOption(
          image: "assets/images/payment/visa.svg",
          title: "Kartu Debit/Kredit",
          onClicked: () {
            controller.initWidget();
            controller.isPaymentSelected.value = true;
            controller.isDebitClicked.value = true;
          },
        )
      ]),
      floatingActionButton: Container(
        width: screenWidth * 0.89,
        height: screenHeight * 0.08,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10, color: Colors.grey, offset: Offset(0, 7))
            ]),
        child: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  "Total Harga",
                  style: titleCard(size: 14, color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  "Rp. 120.000",
                  style: titleCard(size: 20, color: primaryColor),
                ),
              )
            ],
          ),
          Spacer(),
          Obx(() => GestureDetector(
                onTap: () {},
                child: Container(
                  width: screenWidth * 0.28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: controller.isPaymentSelected.value
                          ? primaryColor
                          : inActiveColor),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Lanjutkan",
                          style: titleCard(size: 15, color: Colors.white),
                        ),
                        Text(
                          "Pembayaran",
                          style: titleCard(size: 15, color: Colors.white),
                        ),
                      ]),
                ),
              )),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
