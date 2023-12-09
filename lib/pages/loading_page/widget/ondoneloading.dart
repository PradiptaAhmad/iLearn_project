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
    return Container(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                  alignment: Alignment.center,
                  child: Lottie.asset(gif,
                      repeat: false, height: 100, width: 100)),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.12,
                child: Text(
                  text,
                  style: titleCard(size: 30, color: primaryColor),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
