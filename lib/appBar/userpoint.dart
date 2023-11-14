import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.1,
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
          Positioned(
            bottom: screenHeight * 0.012,
            left: screenWidth * 0.005,
            child: Container(
              width: screenWidth * 0.035,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
