import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilearn_project/core/themes.dart';

class PaymentPageView extends StatelessWidget {
  const PaymentPageView({super.key});

  @override
  Widget build(BuildContext context) {
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
                        offset: Offset(0, 7),
                      ),
                    ]),
                child: ExpansionTile(
                  title: Text("Transfer Virtual Account"),
                  children: [
                    Container(
                      child: Row(children: [
                        Image.asset("assets/images/dana.png"),
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
