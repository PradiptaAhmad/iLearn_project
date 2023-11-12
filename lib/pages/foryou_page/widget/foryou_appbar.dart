import 'package:flutter/material.dart';
import 'package:ilearn_project/core/themes.dart';

class ForyouAppbar extends StatelessWidget {
  const ForyouAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios_new),
      ),
      title: Text("For You", style: titlePage()),
      centerTitle: true,
    );
  }
  
}
