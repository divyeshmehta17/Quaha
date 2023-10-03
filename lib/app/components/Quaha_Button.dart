import 'package:flutter/material.dart';

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
        onPressed: onpressed,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
          child: Text(
            label,
            style: labelStyle,
          ),
        ));
  }
}
