import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../../../components/Quaha_Button.dart';
import '../../../components/coinRow.dart';
import '../../../constants/image_constant.dart';
import '../../../routes/app_pages.dart';
import '../../../services/text_style_util.dart';
import '../controllers/course1_controller.dart';

class Course1View extends GetView<Course1Controller> {
  const Course1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      ImageConstant.pngcourse1BG,
                    ))),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomCoinRowWidget().paddingOnly(bottom: 648.kh),
                QuahaButton(
                    onpressed: () {
                      Get.toNamed(Routes.COURSETIP);
                    },
                    backgroundColor: context.brandColor1,
                    label: 'Play',
                    labelStyle: TextStyleUtil.rubik600(fontSize: 14.kh))
              ],
            ).paddingOnly(left: 17.kw, right: 17.kw, top: 17.kh),
          ),
        ],
      ),
    ));
  }
}
