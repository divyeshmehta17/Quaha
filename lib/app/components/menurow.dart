import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../constants/image_constant.dart';

class CustomMenuRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(ImageConstant.svgalign).paddingOnly(right: 14.kw),
        SvgPicture.asset(ImageConstant.svgfire).paddingOnly(right: 204.kw),
        SvgPicture.asset(ImageConstant.svgNotification)
            .paddingOnly(right: 14.kw),
        Container(
          height: 31,
          width: 31,
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        )
      ],
    ).paddingOnly(top: 23.kh, bottom: 28.kh);
  }
}
