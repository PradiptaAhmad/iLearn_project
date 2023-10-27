import 'package:flutter/material.dart';

class YourPoint extends StatelessWidget {
  const YourPoint({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.05,
      // height: screenHeight*0.50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey, // Warna bayangan
            offset: Offset(0, 2), // Geser bayangan secara horizontal dan vertikal
            blurRadius: 4.0, // Ukuran blur bayangan
            spreadRadius: 0.0, // Sebaran bayangan
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Your Points",style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),),
            Text("+20 since last week",style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400
            ),),
            SizedBox(height: screenHeight*0.003,),
            Image.asset("assets/images/cirlepoint.png",width: screenWidth*0.22,),
            SizedBox(height: screenHeight*0.003,),
            Image.asset("assets/images/pointdesc.png",width: screenWidth*0.59)
          ],
        ),
      ),
    );
  }
}
