import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class IconWithText extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final String labelText;
  final double iconSize;
  final double spacing;
  final TextStyle textStyle; // Define a parameter for the text style

  IconWithText({
    required this.iconData,
    required this.iconColor,
    required this.labelText,
    this.iconSize = 24,
    this.spacing = 8.0,
    TextStyle? textStyle, // Use the TextStyle type for the parameter
  }) : textStyle = textStyle ?? txtIconForYouDetail(color: Colors.black); // Provide a default text style if none is provided

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: iconColor,
          size: iconSize,
        ),
        SizedBox(width: spacing),
        Text(
          labelText,
          style: textStyle, // Use the provided or default text style
        ),
      ],
    );
  }
}
