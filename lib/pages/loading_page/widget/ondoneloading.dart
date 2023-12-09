import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:lottie/lottie.dart';

class OnDoneLoading extends StatelessWidget {
  final String gif;
  final String text;
  const OnDoneLoading({Key? key, required this.gif, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(child: Lottie.asset(gif, repeat: false, animate: false)),
            Positioned(
              top: Get.height * 0.36,
              child: Text(
                text,
                style: titleCard(size: 30, color: primaryColor),
              ),
            )
          ],
        )
      ],
    );
  }
}
