import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/components/quaha_app_bar.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

import '../../../components/QuahaCourseDetailsList.dart';
import '../../../services/text_style_util.dart';
import '../controllers/coursedetails_controller.dart';

List<String> buttonName = [
  'Adobe Illustrator',
  'Typography',
  'Branding',
  'Contrast',
  'Branding'
];

class CoursedetailsView extends GetView<CoursedetailsController> {
  const CoursedetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> courseData = Get.arguments;
    RxList<String> courseName = courseData['courseName'];
    RxList<String> authorName = courseData['authorName'];
    return Scaffold(
        backgroundColor: context.brandColor1,
        appBar: QuahaAppBar(
          title: Text(courseName[0]),
          centerTitle: true,
          textStyle: TextStyleUtil.rubik500(fontSize: 20.kh),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CommonImageView(
                  imagePath: ImageConstant.pngGraphicDesigner,
                ),
                Text(
                  'The Complete 2022 Web Development Bootcamp',
                  style: TextStyleUtil.rubik500(fontSize: 17.kh),
                ).paddingOnly(top: 16.kh, bottom: 12.kh),
                Text(
                  'Organization Name',
                  style: TextStyleUtil.rubik400(fontSize: 14.kh),
                ),
                ProgressBar(
                  value: 0.5,
                  color: context.blue,
                  backgroundColor: context.containerBG,
                  height: 5.kh,
                ).paddingOnly(top: 9.kh, bottom: 8.kh),
                Text(
                  '35% Completed',
                  style: TextStyleUtil.rubik600(fontSize: 14.kh),
                ),
                QuahaCourseDetailsList()
              ],
            ).paddingOnly(left: 16.kw, right: 16.kw, top: 20.kh, bottom: 16.kh),
          ),
        ));
  }
}
