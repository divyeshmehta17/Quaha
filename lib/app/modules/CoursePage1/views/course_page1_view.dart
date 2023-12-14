import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/coinRow.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/coursetip/views/coursetip_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../components/Quaha_Button.dart';
import '../../../routes/app_pages.dart';
import '../controllers/course_page1_controller.dart';

class CoursePage1View extends GetView<CoursePage1Controller> {
  const CoursePage1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.coursetipBGColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomCoinRowWidget(),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10.kw)),
                  child: CommonImageView(
                    imagePath: ImageConstant.pngTomatoe,
                  ),
                ).paddingOnly(top: 84.kh, bottom: 30.kh),
                courseTextContainer(
                  label: '',
                  textAlign: TextAlign.center,
                  style: TextStyleUtil.rubik600(
                      fontSize: 28.kh, color: Colors.black),
                  description: 'How to Grow & Sell Cherry Tomatoes',
                  descriptionpadding: EdgeInsets.only(bottom: 17.kh),
                ),
                QuahaButton(
                        onpressed: () {
                          Get.toNamed(Routes.COURSEPAGE2);
                        },
                        label: "Play",
                        backgroundColor: context.brandColor1,
                        labelStyle: TextStyleUtil.rubik600(fontSize: 14.kh))
                    .paddingOnly(top: 153.kh)
              ],
            ).paddingOnly(left: 17.kw, right: 17.kw, top: 17.kw, bottom: 17.kh),
          ),
        ));
  }
}
