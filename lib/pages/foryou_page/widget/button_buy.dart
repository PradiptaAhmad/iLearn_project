import 'package:flutter/material.dart';
import 'package:ilearn_project/core/themes.dart';

class EnroollBottomSheet extends StatelessWidget {
  const EnroollBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(color: primaryColor),
        child: Center(child: Text("Buy Now")),
      )),
    );
  }
}
