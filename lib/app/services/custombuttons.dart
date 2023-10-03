import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextButton extends StatelessWidget {
  final Function()? onTap;

  final Color color;
  final Color iconColor;
  const NextButton(
      {super.key,
      required this.onTap,
      required this.color,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                shape: BoxShape.circle),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Icon(
                Icons.arrow_forward_rounded,
                color: iconColor,
              ),
            ).paddingAll(10)),
      ),
    );
  }
}
