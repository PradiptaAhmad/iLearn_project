import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class Category extends StatelessWidget {
  const Category({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 8; i++)
            Container(
              margin: EdgeInsets.only(left: 12, top: 5),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: primaryColor), // Tambahkan border dengan warna primaryColor
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.star_border_outlined),
                  Text("Professional", style:txtCategory() ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
