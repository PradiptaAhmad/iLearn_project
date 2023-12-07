import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/payment_page/widget/payment_card.dart';
import 'package:ilearn_project/pages/payment_page/widget/payment_tile.dart';

class PaymentPageView extends StatelessWidget {
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
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                child: Row(children: [
                  PaymentCard(
                      image: "assets/images/payment/dana.svg", title: "Dana"),
                  PaymentCard(
                      image: "assets/images/payment/gopay.svg", title: "Gopay"),
                  PaymentCard(
                      image: "assets/images/payment/ovo.svg", title: "Ovo"),
                  PaymentCard(
                      image: "assets/images/payment/shopeepay.svg",
                      title: "Shopee"),
                  PaymentCard(
                      image: "assets/images/payment/jenius.svg",
                      title: "Jenius"),
                ]),
              )),
          PaymentTile(
            title: "Transfer Virtual Account",
            isExpanded: true,
            child: Row(
              children: [
                PaymentCard(
                    image: "assets/images/payment/bca.svg", title: "BCA"),
                PaymentCard(
                    image: "assets/images/payment/bni.svg", title: "BNI"),
                PaymentCard(
                    image: "assets/images/payment/bri.svg", title: "BRI"),
                PaymentCard(
                    image: "assets/images/payment/mandiri.svg",
                    title: "Mandiri"),
                PaymentCard(
                    image: "assets/images/payment/permata.svg",
                    title: "Permata")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
