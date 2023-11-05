import 'package:flutter/material.dart';
import 'package:ilearn_project/pages/foryou_page/widget/foryoucard.dart';
import 'package:ilearn_project/pages/home_page/widget/category.dart';

import '../../appBar/appbarcustom.dart';

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          AppBarCustom(appBarText: 'For You',),
          SizedBox(height:screenHeight*0.003 ,),
          Category(),
          // ForYouCard()
        ],
      ),
    );
  }
}
