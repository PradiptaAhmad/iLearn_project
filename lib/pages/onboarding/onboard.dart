import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            image: Image.asset("assets/image/reading.png"),
            title: 'Kesusahan dalam belajar ?',
            body: '[nama aplikasi] memberikan kemudahan dalam belajar karena kamu bisa belajar dimanapun dan kapanpun ',
          ),
          PageViewModel(
            image: Image.asset("assets/image/laying.png"),
            title: 'Materi yang beragam',
            body: '[nama aplikasi] mempunyai beragam materi menarik yang bisa dipelajari dari sekarang ',
          ),
          PageViewModel(
            image: Image.asset("assets/image/chilling.png"),
            title: 'Harga terjangkau',
            body: 'Kamu bisa menikmati fitur di [nama aplikasi] tanpa harus menyiksa dompetmu ',
          ),
        ],
        back: Icon(Icons.arrow_back_ios_rounded),
        next: Icon(Icons.navigate_next),
        done: ElevatedButton(onPressed: () {}, child: Text("Get Started")),
        onDone: () {},
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