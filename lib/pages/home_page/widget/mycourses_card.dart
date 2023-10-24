import 'package:flutter/material.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
     child: Row(
       children: [
         for (int i = 1; i < 8; i++)
         Container(
           margin: EdgeInsets.symmetric(horizontal:6, vertical: 5),
           padding: EdgeInsets.symmetric(
             vertical: screenHeight * 0.02, // Adjust as needed
             horizontal: screenWidth * 0.05, // Adjust as needed
           ),
           decoration: BoxDecoration(
             color: Color(0xFFF6FDC3),
             borderRadius: BorderRadius.circular(screenHeight * 0.025), // Adjust as needed
             boxShadow: [
               BoxShadow(
                 color: Colors.grey,
                 blurRadius: screenHeight * 0.008, // Adjust as needed
                 offset: Offset(0, screenHeight * 0.004), // Adjust as needed
               ),
             ],
           ),
           child: SingleChildScrollView( // Wrap content with SingleChildScrollView
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                   children: [
                     Text("HTML & CSS", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                     Text("12 Exercises", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10)),
                   ],
                 ),
                 SizedBox(
                   width: screenWidth *0.04,
                 ),
                 Image.asset("assets/images/mycourses.png", width: screenWidth * 0.11, height: screenHeight * 0.04),
               ],
             ),
           ),
         ),
       ],
     ),
    );
  }
}
