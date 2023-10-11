import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

class QuahaButton extends StatelessWidget {
  final Function() onpressed;
  final String label;
  final String? svgPath;
  final String? imagePath;
  final TextStyle labelStyle;
  const QuahaButton(
      {super.key,
      required this.onpressed,
      required this.label,
      required this.labelStyle,
      this.svgPath,
      this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: context.nextButtonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.kw)),
            padding: EdgeInsets.symmetric(horizontal: 12.kw, vertical: 16.kh)),
        onPressed: onpressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonImageView(
              svgPath: svgPath,
              imagePath: imagePath,
            ).paddingOnly(right: 10.kw),
            Text(
              label,
              style: labelStyle,
            ),
          ],
        ));
  }
}
