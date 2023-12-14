import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/Quaha_Button.dart';
import 'package:quaha/app/components/coinRow.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../../../services/text_style_util.dart';
import '../controllers/coursetip_controller.dart';

class CoursetipView extends GetView<CoursetipController> {
  const CoursetipView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.coursetipBGColor,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
              CustomCoinRowWidget(),
              Stack(children: [
                Center(
                  child: CommonImageView(
                    imagePath: ImageConstant.pngstraigthzebra,
                  ),
                ),
                courseTextContainer(
                  label: 'TIP',
                  labelpadding: EdgeInsets.only(top: 16.kh, bottom: 13.kh),
                  descriptionpadding:
                      EdgeInsets.only(left: 22.kw, right: 22.kw, bottom: 28.kh),
                  description: 'Engage with me to learn more & Earn Quoins',
                ).paddingOnly(left: 17.kw, right: 17.kw, top: 115.kh),
              ]).paddingOnly(top: 100.kh),
              QuahaButton(
                      onpressed: () {
                        Get.toNamed(Routes.COURSE_PAGE1);
                      },
                      label: "Continue",
                      backgroundColor: context.brandColor1,
                      labelStyle: TextStyleUtil.rubik600(fontSize: 14.kh))
                  .paddingOnly(top: 280.kh)
            ]).paddingSymmetric(horizontal: 17.kw, vertical: 20.kh))));
  }
}

class courseTextContainer extends StatelessWidget {
  final String? label;
  final String? description;
  final TextStyle? style;
  final TextAlign? textAlign;
  final EdgeInsetsGeometry? labelpadding;
  final EdgeInsetsGeometry? descriptionpadding;
  const courseTextContainer({
    super.key,
    this.label,
    this.description,
    this.style,
    this.textAlign,
    this.labelpadding,
    this.descriptionpadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Padding(
            padding: labelpadding ?? EdgeInsets.all(0),
            child: Text(
              label!,
              style: style ??
                  TextStyleUtil.rubik500(fontSize: 24.kh, color: Colors.black),
              textAlign: textAlign ?? TextAlign.center,
            ),
          ),
          Padding(
            padding: descriptionpadding ?? EdgeInsets.all(0),
            child: Text(
              description ?? '',
              style: style ??
                  TextStyleUtil.rubik400(fontSize: 20.kh, color: Colors.black),
              textAlign: textAlign ?? TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
