import 'package:flutter/material.dart';
import 'package:quaha/app/services/responsive_size.dart';

class QuahaButton extends StatelessWidget {
  final Function() onpressed;
  final String label;
  final TextStyle labelStyle;
  const QuahaButton(
      {super.key,
      required this.onpressed,
      required this.label,
      required this.labelStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 12.kw, vertical: 16.kh)),
        onPressed: onpressed,
        child: Text(
          label,
          style: labelStyle,
        ));
  }
}
