import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/foryou_page/widget/foryou_appbar.dart';
import 'package:ilearn_project/pages/foryou_page/widget/foryou_listview.dart';

import '../../../core/appBar/searchbar.dart';
import '../controller/foryou_controller.dart';

class ForYouPageView extends GetView<ForyouPageController> {
  ForYouPageView({super.key});

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
