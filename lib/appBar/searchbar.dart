import 'package:flutter/material.dart';


class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 45,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(
                width: 0,
                color: Colors.black,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            fillColor: Color(0xFFFEFDFD),
            suffixIcon: Icon(Icons.sort, color: Colors.black),
            hintStyle: new TextStyle(color: Color(0xFFd0cece), fontSize: 16),
            hintText: "What would you like to buy?",
          ),
        ),
      ),
    );
  }
}
