import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/routes/route_name.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

bool showBottomPart = true;

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showBottomPart: showBottomPart,
        showDoneButton: true,
        showBackButton: false,
        showNextButton: false,
        pages: [
          PageViewModel(
            image: Image.asset("assets/images/reading.png"),
            title: 'Kesusahan dalam belajar?',
            body: 'ILearn memberikan kemudahan dalam belajar karena kamu bisa belajar dimanapun dan kapanpun ',
          ),
          PageViewModel(
            image: Image.asset("assets/images/laying.png"),
            title: 'Materi yang beragam',
            body: 'ILearn mempunyai beragam materi menarik yang bisa dipelajari dari sekarang ',
          ),
          PageViewModel(
            image: Image.asset("assets/images/chilling.png"),
            title: 'Harga terjangkau',
            body: 'Kamu bisa menikmati fitur di [nama aplikasi] tanpa harus menyiksa dompetmu ',
          ),
        ],
        // back: Icon(Icons.arrow_back_ios_rounded),
        // next: Icon(Icons.navigate_next),
        done: ElevatedButton(
            onPressed: () {
              Get.toNamed(RouteName.login);
              setState(() {
                showBottomPart =
                    false; // Sembunyikan bagian bawah setelah "Get Started" ditekan
              });
            },
            child: Text("Get Started")),
        onDone: () {
          
        },
      ),
      // bottomNavigationBar: Container(
      //   alignment: Alignment.bottomCenter,
      //   child: ElevatedButton(
      //     onPressed: () {},
      //     child: Text("Get Started"),
      //   ),
      // ),
    );
  }
}