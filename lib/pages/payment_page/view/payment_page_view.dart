import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/payment_page/widget/payment_card.dart';

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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ]),
                child: ExpansionTile(
                  initiallyExpanded: true,
                  title: Text("Dompet Digital"),
                  children: [
                    Container(
                      width: screenWidth * 0.9,
                      child: Row(children: [
                        PaymentCard(
                            image: "assets/images/payment/dana.svg",
                            title: "Dana"),
                        PaymentCard(
                            image: "assets/images/payment/gopay.svg",
                            title: "Gopay"),
                        PaymentCard(
                            image: "assets/images/payment/ovo.svg",
                            title: "Ovo"),
                        PaymentCard(
                            image: "assets/images/payment/shopeepay.svg",
                            title: "Shopee"),
                        PaymentCard(
                            image: "assets/images/payment/jenius.svg",
                            title: "Jenius"),
                      ]),
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
