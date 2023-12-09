import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:lottie/lottie.dart';

class OnDoneLoading extends StatefulWidget {
  final String gif;
  final String text;

  const OnDoneLoading({Key? key, required this.gif, required this.text})
      : super(key: key);

  @override
  _OnDoneLoadingState createState() => _OnDoneLoadingState();
}

class _OnDoneLoadingState extends State<OnDoneLoading> {
  bool animationEnded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Lottie.asset(widget.gif,
                repeat: false,
                animate: !animationEnded,
                onAnimationEnd: _onAnimationEnd),
            if (animationEnded)
              Positioned(
                top: Get.height * 0.36,
                child: Text(
                  widget.text,
                  style: titleCard(size: 30, color: primaryColor),
                ),
              ),
          ],
        )
      ],
    );
  }

  void _onAnimationEnd() {
    setState(() {
      animationEnded = true;
    });
  }
}
