import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logoSize = 50.0;

    final logoPaths = [
      "assets/logo/google.png",
      "assets/logo/facebook.png",
      "assets/logo/ig.png",
      "assets/logo/twt.png",
    ];

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(logoPaths.length, (index) {
              return Padding(
                padding: EdgeInsets.only(right: 10), // Jarak antara logo
                child: Image.asset(
                  logoPaths[index],
                  width: logoSize,
                  height: logoSize,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
