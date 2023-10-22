import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.40,
      decoration: BoxDecoration(
        color: Color(0xFFFFD1AD),
        borderRadius: BorderRadius.circular(20.0), // Atur nilai sesuai kebutuhan Anda
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tips Coding", style: headerCardHome(),),
                Text("10 Exercies", style: subHeaderCardHome(),),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: screenWidth *0.19,
                    height: screenHeight* 0.02,
                    alignment: Alignment.center,
                    child: Text(
                      "30 Minutes",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 11
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Warna latar belakang putih
                    padding: EdgeInsets.all(0), // Menghilangkan padding bawaan
                  ),
                )
              ],
            ),
          ),
          Image.asset("assets/images/headercard.png", width: 158, height: 300,)
        ],
      ),
    );
  }
}
