import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnLoadingView extends StatelessWidget {
  final String gif;
  OnLoadingView({Key? key, required this.gif});

  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.asset(gif),);
  }
}