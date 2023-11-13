import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight? fontweight;
  const TextWidget(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.color,
      this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontweight),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
