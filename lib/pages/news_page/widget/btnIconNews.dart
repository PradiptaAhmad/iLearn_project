import 'package:flutter/material.dart';

class btnIconNews extends StatelessWidget {
  final String text;
  final IconData icon;
  final double iconSize;
  final Color backgroundColor;

  btnIconNews({
    required this.text,
    required this.icon,
    this.iconSize = 12.0,
    this.backgroundColor = const Color(0xFFFBECE7),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: iconSize,
          ),
          SizedBox(width: 4.0), // Jarak antara ikon dan teks
          Text(text),
        ],
      ),
    );
  }
}
