import 'package:flutter/material.dart';
import 'package:quaha/app/services/colors.dart';

import '../constants/image_constant.dart';

class SocialMediaLoginRow extends StatelessWidget {
  const SocialMediaLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 64,
          width: 64,
          decoration:
              BoxDecoration(color: context.loginRow, shape: BoxShape.circle),
          child: Image.asset(ImageConstant.pngapple),
        ),
        Container(
          height: 64,
          width: 64,
          decoration:
              BoxDecoration(color: context.loginRow, shape: BoxShape.circle),
          child: Image.asset(ImageConstant.pngGoogle),
        ),
        Container(
          height: 64,
          width: 64,
          decoration:
              BoxDecoration(color: context.loginRow, shape: BoxShape.circle),
          child: Image.asset(ImageConstant.pngfacebook),
        )
      ],
    );
  }
}
