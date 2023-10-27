import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class Items extends StatelessWidget {
  final List<Widget> rows;
  final double borderRadius;
  final double elevation;
  final double itemSpacing; // Jarak antara item
  final double textIconSpacing; // Jarak antara teks dan ikon

  Items({
    required this.rows,
    this.borderRadius = 10.0,
    this.elevation = 4.0,
    this.itemSpacing = 10.0, // Atur jarak default antara item
    this.textIconSpacing = 10.0, // Atur jarak antara teks dan ikon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Set the background color to white
        borderRadius: BorderRadius.circular(borderRadius), // Apply rounded corners
      ),
      child: Card(
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: rows.map((row) {
              return Container(
                margin: EdgeInsets.only(bottom: itemSpacing), // Atur jarak vertikal antara item
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    DefaultTextStyle(
                      style: txtprofile(color: Colors.black), // Apply the txtprofile() text style
                      child: row,
                    ),
                    SizedBox(
                      width: textIconSpacing,
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 35, // Set the icon size to 35x35
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
