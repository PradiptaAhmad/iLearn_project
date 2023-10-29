import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class ForYouCard extends StatelessWidget {
  ForYouCard({super.key});

  final List<Map<String, dynamic>> dummyData = [
    {
      'title': 'HTML & CSS',
      'decs': '12 exercises',
      'imagePath': 'assets/images/htmlcard.png',
    },
    {
      'title': 'Tips Coding',
      'decs': '12 exercises',
      'imagePath': 'assets/images/binarycard.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5,
      ),
      itemCount: dummyData.length,
      itemBuilder: (BuildContext context, int index) {
        final item = dummyData[index];
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.12,
            horizontal: MediaQuery.of(context).size.width * 0.10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.025),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: MediaQuery.of(context).size.height * 0.008,
                offset: Offset(0, MediaQuery.of(context).size.height * 0.004),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item['title'], style: titleCard()),
              Text(item['decs'], style: subTitleCard()),
              Image.asset(item['imagePath'],
                  width: MediaQuery.of(context).size.width * 0.19,
                  height: MediaQuery.of(context).size.height * 0.1),
            ],
          ),
        );
      },
    );
  }
}




// GridView.builder(
//   physics: const NeverScrollableScrollPhysics(),
//   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 2,  // Ubah nilai ini menjadi 2
//     crossAxisSpacing: 10.0,
//     mainAxisSpacing: 5,
//   ),
//   itemCount: menuItems.length,
//   itemBuilder: (BuildContext context, int index) {
//     final menuItem = menuItems[index];
//     return Container(
//       padding: const EdgeInsets.symmetric(
//           horizontal: 20, vertical: 0),
//       child: Column(
//         children: [
//           Image.asset(menuItem['imagePath']),
//           const SizedBox(height: 8),
//           Text(
//             menuItem['title'],
//             textAlign: TextAlign.center,
//             style: appBarText,
//           ),
//         ],
//       ),
//     );
//   },
// ),