import 'package:flutter/material.dart';
import 'package:quaha/app/services/auth.dart';
import 'package:quaha/app/services/colors.dart';

import '../constants/image_constant.dart';

class SocialMediaLoginRow extends StatelessWidget {
  const SocialMediaLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () async {
            await Auth().apple();
          },
          child: Container(
            height: 64,
            width: 64,
            decoration:
                BoxDecoration(color: context.loginRow, shape: BoxShape.circle),
            child: Image.asset(ImageConstant.pngapple),
          ),
        ),
        GestureDetector(
          onTap: () async {
            await Auth().google();
          },
          child: Container(
            height: 64,
            width: 64,
            decoration:
                BoxDecoration(color: context.loginRow, shape: BoxShape.circle),
            child: Image.asset(ImageConstant.pngGoogle),
          ),
        ),
        GestureDetector(
          onTap: () async {
            await Auth().facebook();
          },
          child: Container(
            height: 64,
            width: 64,
            decoration:
                BoxDecoration(color: context.loginRow, shape: BoxShape.circle),
            child: Image.asset(ImageConstant.pngfacebook),
          ),
        )
      ],
    );
  }
}
