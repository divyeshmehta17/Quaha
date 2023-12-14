import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../constants/image_constant.dart';
import '../services/text_style_util.dart';

class CustomCoinRowWidget extends StatelessWidget {
  final bool? showStreak;
  CustomCoinRowWidget({this.showStreak = true});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContainer(
          backgroundColor: context.containerBG,
          borderRadiusGeometry: BorderRadius.circular(5),
          child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: SvgPicture.asset(ImageConstant.svgpodium).paddingAll(5)),
        ),
        CustomContainer(
          backgroundColor: const Color.fromRGBO(14, 23, 95, 0.58),
          borderRadiusGeometry: BorderRadius.circular(15),
          child: RowWithSvg(
            pngicon: ImageConstant.pngquoins,
            text: '100',
          ),
        ),
        CustomContainer(
          backgroundColor: const Color.fromRGBO(14, 23, 95, 0.58),
          borderRadiusGeometry: BorderRadius.circular(15),
          child: RowWithSvg(
            icon: ImageConstant.svgcrown,
            text: '5',
          ),
        ),
        if (showStreak == false)
          CommonImageView(
            svgPath: ImageConstant.svgfire,
          )
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color backgroundColor;

  final Widget child;
  final BorderRadiusGeometry borderRadiusGeometry;
  CustomContainer({
    super.key,
    required this.backgroundColor,
    required this.child,
    required this.borderRadiusGeometry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadiusGeometry,
      ),
      child: child,
    );
  }
}

class RowWithSvg extends StatelessWidget {
  final String? icon;
  final String? pngicon;
  final String text;

  RowWithSvg({
    this.icon,
    required this.text,
    this.pngicon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonImageView(
          svgPath: icon,
          imagePath: pngicon,
          height: 24.kh,
          width: 24.kw,
        ),
        Text(
          text,
          style: TextStyleUtil.rubik500(fontSize: 14),
        ).paddingSymmetric(horizontal: 5.kw),
        SvgPicture.asset(ImageConstant.svgplus),
      ],
    );
  }
}
