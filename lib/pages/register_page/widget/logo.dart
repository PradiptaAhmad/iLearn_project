import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/logo/google.png"),
        Image.asset("assets/logo/facebook.png"),
        Image.asset("assets/logo/ig.png"),
        Image.asset("assets/logo/twt.png"),
      ],
    );
  }
}
