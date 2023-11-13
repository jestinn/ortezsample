import 'package:flutter/material.dart';
import 'package:ortezsample/widget/text_widget.dart';

class PriorityContaier extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color boxColor;
  final Color borderColor;
  final IconData? iconData;
  const PriorityContaier(
      {super.key,
      required this.text,
      required this.textColor,
      required this.boxColor,
      required this.borderColor,
      this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 100,
      decoration: BoxDecoration(
          color: boxColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Colors.red,
            size: 8,
          ),
          const SizedBox(
            width: 5,
          ),
          TextWidget(
            text: text,
            fontSize: 12,
            color: textColor,
          ),
        ],
      ),
    );
  }
}
