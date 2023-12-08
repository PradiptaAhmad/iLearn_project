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
    // Tambahkan item lain di sini
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
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item['title'], style: titleCard(size: 14, color: Colors.black)),
              Text(item['decs'], style: subTitleCard(color: primaryColor)),
              Image.asset(
                item['imagePath'],
                width: MediaQuery.of(context).size.width * 0.3, // Sesuaikan ukuran gambar sesuai kebutuhan
                height: MediaQuery.of(context).size.width * 0.3, // Sesuaikan ukuran gambar sesuai kebutuhan
              ),
            ],
          ),
        );
      },
    );
  }
}
