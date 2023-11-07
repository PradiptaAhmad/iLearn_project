import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class DetailCardNews extends StatelessWidget {
  const DetailCardNews({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return  Container(
      width: screenWidth*0.3,
      margin: EdgeInsets.symmetric(horizontal: 20 ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Expanded(
                child: Column(
                  children: [
                    Text("Airplanes Lorem Ipsum de alert 2021", style:titleNews() ,),
                    SizedBox(height: screenHeight*0.01,),
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", style: subTitleNews(),),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
