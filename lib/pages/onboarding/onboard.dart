import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/routes/route_name.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});

  final pageDecoration = PageDecoration(
    titleTextStyle: onBoardTitle(),
    bodyTextStyle: onBoardDesc(),
    bodyPadding: EdgeInsets.all(16),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showBottomPart: showBottomPart,
        showDoneButton: false,
        showBackButton: false,
        showNextButton: false,
        showSkipButton: false,
        pages: [
          _buildPage(
            "assets/images/reading.png",
            'Kesusahan dalam belajar?',
            'ILearn memberikan kemudahan dalam belajar karena kamu bisa belajar dimanapun dan kapanpun',
          ),
          _buildPage(
            "assets/images/laying.png",
            'Materi yang beragam',
            'ILearn mempunyai beragam materi menarik yang bisa dipelajari dari sekarang',
          ),
          _buildPage(
            "assets/images/chilling.png",
            'Harga terjangkau',
            'Kamu bisa menikmati fitur di [nama aplikasi] tanpa harus menyiksa dompetmu',
            footer: ElevatedButton(
              onPressed: () {
                // Handle button press here
                Get.toNamed(RouteName.login);
                showBottomPart = false;
              },
              child: Text("Get Started"),
            ),
          ),
        ],
      ),
    );
  }

  PageViewModel _buildPage(String imageAsset, String title, String body,
      {Widget? footer}) {
    return PageViewModel(
      image: Image.asset(imageAsset),
      title: title,
      decoration: pageDecoration,
      body: body,
      footer: footer,
    );
  }
}

bool showBottomPart = true;
