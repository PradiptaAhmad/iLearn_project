import 'package:flutter/material.dart';
import 'package:ilearn_project/pages/register_page/widget/btnLogo.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              BtnLogo(),
            ],
          ),
        ),
      ),
    );
  }
}
