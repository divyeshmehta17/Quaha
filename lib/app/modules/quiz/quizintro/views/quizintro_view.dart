import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/Quaha_Button.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../controllers/quizintro_controller.dart';

class introView extends GetView<QuizintroController> {
  final String? label;
  final String? description;
  final TextStyle? labelStyle;
  final TextStyle? descriptionStyle;
  dynamic Function() onpressed;
  introView({
    this.label,
    this.description,
    this.labelStyle,
    this.descriptionStyle,
    required this.onpressed,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CommonImageView(
            imagePath: ImageConstant.pngstraigthzebra,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: context.containerBG,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Text(
                      label!,
                      style:
                          labelStyle ?? TextStyleUtil.rubik500(fontSize: 24.kh),
                    ).paddingOnly(bottom: 30.kh),
                    Text(
                      description!,
                      style: descriptionStyle ??
                          TextStyleUtil.rubik500(fontSize: 16.kh),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ).paddingAll(12.kh),
              ),
              QuahaButton(
                      onpressed: onpressed,
                      label: 'Continue',
                      labelStyle: TextStyleUtil.rubik600(fontSize: 14.kh))
                  .paddingOnly(top: 35.kh)
            ],
          ).paddingOnly(top: 115),
        ],
      ).paddingOnly(left: 16.kw, right: 16.kw, top: 165.kh),
    )));
  }
}
