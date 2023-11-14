import 'package:flutter/material.dart';
import 'package:ilearn_project/core/themes.dart';

class EnroollBottomSheet extends StatelessWidget {
  const EnroollBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Price", style: txtPrice(color: Colors.black.withOpacity(0.7)),),
                Text("\$40", style: txtPrice(color: Colors.black.withOpacity(0.7)),),
              ],
            ),
          ),
          SizedBox(width: screenWidth*0.24,),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              minimumSize: Size(126, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0), // Set radius to 0.0
              ),
            ),
            child: Text("Buy Class", style: btnBuy(color: Colors.white)),
          )
        ],
      );
  }
}
