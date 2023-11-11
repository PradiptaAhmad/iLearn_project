import 'package:flutter/material.dart';


class SearchWidget extends StatelessWidget {
  SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(

        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(
            width: 0,
            color: Colors.black,
            style: BorderStyle.none,
          ),
        ),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        suffixIcon: Icon(Icons.sort, color: Colors.black),
        hintStyle: new TextStyle(
          color: Color(0xFFd0cece),
          fontSize: 14,
        ),
        hintText: "What would you like to learn?",
      ),
    );
  }
}
