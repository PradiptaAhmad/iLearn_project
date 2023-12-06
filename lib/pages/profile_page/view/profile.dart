import 'package:flutter/material.dart';
import 'package:ilearn_project/pages/profile_page/widget/items.dart';
import 'package:ilearn_project/pages/profile_page/widget/pointuser.dart';

import '../../../core/appBar/appbarcustom.dart';



class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          child: ListView(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/bghead_profile.png",
                    width: screenWidth,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.52),
                    padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.009),
                    width: screenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Items(rows: [
                          Row(
                            children: [
                              Icon(Icons.perm_identity),
                              SizedBox(width:screenWidth*0.04),
                              Text('Account'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.notifications),
                              SizedBox(width:screenWidth*0.04),
                              Text('Notification'),
                            ],
                          ),
                        ]
                        ),
                        SizedBox(height: screenHeight*0.02),
                        Items(rows: [
                          Row(
                            children: [
                              Icon(Icons.privacy_tip_outlined),
                              SizedBox(width:screenWidth*0.04),
                              Text('Privacy Policy'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.help),
                              SizedBox(width:screenWidth*0.04),
                              Text('Help Center'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.info_outline),
                              SizedBox(width:screenWidth*0.04),
                              Text('About Us'),
                            ],
                          ),
                        ]
                        ),
                        SizedBox(height: screenHeight*0.02),
                        Items(rows: [
                          Row(
                            children: [
                              Icon(Icons.logout),
                              SizedBox(width:screenWidth*0.04),
                              Text('Logout'),
                            ],
                          ),
                        ]
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: screenHeight * 0.240),
                      width: screenWidth * 0.75,
                      height: screenHeight * 0.25,
                      child: YourPoint(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: screenHeight * 0.01),
                      child: Column(
                        children: [
                          AppBarCustom(appBarText: 'Your Profile',textColor: Colors.white,showSearchBar: false),
                        ],
                      )
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
