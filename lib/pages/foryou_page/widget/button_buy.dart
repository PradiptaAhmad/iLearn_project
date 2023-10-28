import 'package:flutter/material.dart';
import 'package:ilearn_project/core/themes.dart';

class ButtonPrice extends StatelessWidget {
  const ButtonPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("Total Price", style: txtPrice(color: Colors.black.withOpacity(0.7)),),
              Text("\$40", style: txtPrice(color: Colors.black.withOpacity(0.7)),),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: primaryColor,
              minimumSize: Size(126, 50),
            ),
            child: Text("Buy Class", style: btnBuy(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
