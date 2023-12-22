import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

class QuahaButton extends StatelessWidget {
  final Function() onpressed;
  final String? label;
  final String? svgPath;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final bool? isCost;
  final bool? isDownload;
  final String? imagePath;
  final TextStyle labelStyle;
  const QuahaButton(
      {super.key,
      required this.onpressed,
      this.label,
      required this.labelStyle,
      this.svgPath,
      this.imagePath,
      this.backgroundColor,
      this.isCost = false,
      this.isDownload = false,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? context.nextButtonColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(8.kw)),
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
              label ?? '',
              style: labelStyle,
            ),
            if (isCost == true)
              Row(
                children: [
                  CommonImageView(
                    imagePath: ImageConstant.pngquoins,
                    height: 24.kh,
                    width: 24.kw,
                  ).paddingOnly(left: 10.kw, right: 5.kw),
                  Text(
                    '10 quoins',
                    style: labelStyle,
                  ),
                ],
              ),
          ],
        ));
  }
}
