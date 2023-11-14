import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/appBar/searchbar.dart';
import 'package:ilearn_project/controllers/foryou_controller/foryou_controller.dart';
import 'package:ilearn_project/pages/foryou_page/widget/foryou_appbar.dart';
import 'package:ilearn_project/pages/foryou_page/widget/foryou_listview.dart';

class ForYou extends StatelessWidget {
  final foryouC = Get.find<ForyouController>();
  ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: ForyouAppbar(),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          child: Column(
            children: [
              // SizedBox(
              //   height: screenHeight * 0.003,
              // ),
              // Category(),
              // ForYouCard()
              CustomSearchBar(),
              ForyouList(),
            ],
          ),
        ),
      ),
    );
  }
}
