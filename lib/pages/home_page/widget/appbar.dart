import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/pages/home_page/controller/homepage_controller.dart';
import 'package:ilearn_project/pages/home_page/widget/userpoint.dart';

import '../../../core/themes.dart';

class HomeAppbar extends GetView<HomepageController> implements PreferredSizeWidget {
  const HomeAppbar({super.key});


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: pinkMuda,
      leading: Container(
        margin: EdgeInsets.all(7),
        child: CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/avatar.png",
          ),
        ),
      ),
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Good Afternoon,",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.black)),
        Text("Ahmad Pradipta",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black))
      ]),
    );
  }
  
@override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}