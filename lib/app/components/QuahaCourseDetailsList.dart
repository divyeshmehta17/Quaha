import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/Courseentryscreen/controllers/courseentryscreen_controller.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

class QuahaCourseDetailsList extends GetView<CourseentryscreenController> {
  const QuahaCourseDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => CourseentryscreenController());
    return ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ExpansionTile(
            backgroundColor: context.containerBG,
            collapsedBackgroundColor: context.containerBG,
            iconColor: Colors.white,
            maintainState: true,
            collapsedIconColor: Colors.white,
            collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.kw)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.kw)),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    CommonImageView(
                      imagePath: ImageConstant.pngmoduleimage,
                    ).paddingOnly(right: 13.kw),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Module Name',
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet,\nnsectetur adipiscing elit.',
                          style: TextStyleUtil.rubik400(fontSize: 12.kh),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ).paddingOnly(top: 16.kh, bottom: 16.kh),
            children: [
              Obx(
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    controller.duedate[index] == true
                        ? Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: context.brandColor1,
                                    borderRadius: BorderRadius.circular(4.kw)),
                                child: Text(
                                  'Due Date : 15 Apr 22, 12:00 (GMT)',
                                  style:
                                      TextStyleUtil.rubik400(fontSize: 12.kh),
                                ).paddingSymmetric(
                                    vertical: 3.kh, horizontal: 8.kw),
                              ),
                            ],
                          )
                        : SizedBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        (controller.durationCompleted[index] * 100 == 0)
                            ? Text(
                                'Yet to Start',
                                style: TextStyleUtil.rubik500(fontSize: 14.kh),
                              )
                            : Text(
                                '${controller.durationCompleted[index] * 100} %',
                                style: TextStyleUtil.rubik500(fontSize: 14.kh),
                              ),
                        (controller.durationCompleted[index] * 100 == 100.0)
                            ? Row(
                                children: [
                                  Text(
                                    'Completed',
                                    style:
                                        TextStyleUtil.rubik400(fontSize: 14.kh),
                                  ).paddingOnly(right: 8.kw),
                                  CommonImageView(
                                    svgPath: ImageConstant.svgverifiedbatch,
                                  ),
                                ],
                              )
                            : Row(
                                children: [
                                  Text(
                                    '0min Remaining',
                                    style:
                                        TextStyleUtil.rubik400(fontSize: 14.kh),
                                  ).paddingOnly(right: 8.kw),
                                  Icon(
                                    CupertinoIcons.exclamationmark_circle,
                                    color: Colors.white,
                                  ),
                                ],
                              )
                      ],
                    ),
                    ProgressBar(
                      value: controller.durationCompleted[index],
                      height: 5.kh,
                      width: 325.kw,
                      color: context.blue,
                      backgroundColor: context.brandColor1,
                    ).paddingOnly(top: 8.kh, bottom: 14.kh),
                  ],
                ).paddingSymmetric(horizontal: 8.kw),
              )
            ],
          ).paddingOnly(bottom: 16.kh, top: 24.kh);
        });
  }
}
