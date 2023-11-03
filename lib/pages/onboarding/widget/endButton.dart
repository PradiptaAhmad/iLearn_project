import 'package:flutter/material.dart';
import 'package:ilearn_project/core/themes.dart';

class EndButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  const EndButton({Key? key, required this.onPressed, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: EdgeInsets.only(bottom: 10, top: 10),
          width: screenWidth * 0.8,
          height: 45,
          color: primaryColor,
          child: Center(
            child: Text(
              'Get Started',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
        // style: ElevatedButton.styleFrom(
        //   primary: color,
        //   minimumSize: Size(365, 45),
        // ),
        // child: Text(
        //   'Get Started',
        //   style: buttonTxt(),
        // ),
        );
  }
}
