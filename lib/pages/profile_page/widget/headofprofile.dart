import 'package:flutter/material.dart';

import '../../../core/appBar/appbarcustom.dart';


class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width, // Set the width to match the screen width
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/your_background_image.png'), // Replace with the correct path to your image
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            AppBarCustom(appBarText: 'Your Profile'),
            // Add other widgets as needed
          ],
        ),
      ),
    );
  }
}
