import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/modules/profile/views/profile_view.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../constants/image_constant.dart';

class CustomMenuRowWidget extends StatelessWidget {
  final VoidCallback? onTap;

  CustomMenuRowWidget({Key? key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: onTap,
            child: SvgPicture.asset(ImageConstant.svgalign)
                .paddingOnly(right: 14.kw)),
        SvgPicture.asset(ImageConstant.svgfire).paddingOnly(right: 204.kw),
        SvgPicture.asset(ImageConstant.svgNotification)
            .paddingOnly(right: 14.kw),
        GestureDetector(
          onTap: () {
            Get.to(ProfileView());
          },
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
          ),
        ),
      ],
    ).paddingOnly(top: 23.kh, bottom: 28.kh);
  }
}
