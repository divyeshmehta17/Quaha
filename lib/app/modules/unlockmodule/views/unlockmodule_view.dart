import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/Quaha_Button.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/components/quaha_app_bar.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../controllers/unlockmodule_controller.dart';

class UnlockmoduleView extends GetView<UnlockmoduleController> {
  const UnlockmoduleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: QuahaAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: context.containerBG,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(8.kw),
                ),
              ),
              child: Column(
                children: [
                  Center(
                    child: CommonImageView(
                      svgPath: ImageConstant.svgunlock,
                    ),
                  ).paddingOnly(bottom: 38.kh, top: 36.kh),
                  Text(
                    'Unlock 1 Module',
                    style: TextStyleUtil.rubik500(fontSize: 35.kh),
                  ).paddingOnly(bottom: 60.kh),
                  Container(
                    decoration: BoxDecoration(
                        color: context.indigo,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.kw))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CommonImageView(
                                  svgPath: ImageConstant.svgverficationbadge1,
                                ),
                                Text(
                                  'Unlock 2 Modules',
                                  style:
                                      TextStyleUtil.rubik400(fontSize: 17.kh),
                                ).paddingOnly(left: 5.kw),
                              ],
                            ).paddingOnly(
                              top: 24.kh,
                            ),
                            Text(
                              '30 Quoins ',
                              style: TextStyleUtil.rubik400(
                                  fontSize: 12.kh, color: context.mustard),
                            ).paddingOnly(top: 24.kh, right: 24.kw),
                          ],
                        ).paddingOnly(left: 12.kw, right: 12.kw, bottom: 8.kh),
                      ],
                    ),
                  ).paddingOnly(top: 14.kh, left: 13.kw, right: 13.kw),
                  Container(
                    decoration: BoxDecoration(
                        color: context.indigo,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.kw))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CommonImageView(
                                  svgPath: ImageConstant.svgverficationbadge1,
                                ),
                                Text(
                                  'Unlock 1 Modules',
                                  style:
                                      TextStyleUtil.rubik400(fontSize: 17.kh),
                                ).paddingOnly(left: 5.kw),
                              ],
                            ).paddingOnly(
                              top: 24.kh,
                            ),
                            Text(
                              '30 Quoins ',
                              style: TextStyleUtil.rubik400(
                                  fontSize: 12.kh, color: context.mustard),
                            ).paddingOnly(top: 24.kh, right: 24.kw),
                          ],
                        ).paddingOnly(left: 12.kw, right: 12.kw, bottom: 8.kh),
                      ],
                    ),
                  ).paddingOnly(top: 14.kh, left: 13.kw, right: 13.kw),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Need to unlock',
                            style: TextStyleUtil.rubik400(
                                fontSize: 12.kh, color: context.mustard),
                          ),
                          Text(
                            'Current Balance',
                            style: TextStyleUtil.rubik400(
                                fontSize: 12.kh, color: context.mustard),
                          )
                        ],
                      ).paddingOnly(bottom: 6.kh),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CommonImageView(
                                imagePath: ImageConstant.pngquoins,
                                height: 24.kh,
                                width: 24.kw,
                              ).paddingOnly(right: 5.kw),
                              Text(
                                '15 Quoins',
                                style: TextStyleUtil.rubik400(
                                    fontSize: 12.kh, color: context.mustard),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CommonImageView(
                                imagePath: ImageConstant.pngquoins,
                                height: 24.kh,
                                width: 24.kw,
                              ).paddingOnly(right: 5.kw),
                              Text(
                                '30 Quoins',
                                style: TextStyleUtil.rubik400(
                                    fontSize: 12.kh, color: context.mustard),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ).paddingOnly(top: 28.kh, left: 16.kw, right: 16.kw),
                  QuahaButton(
                          onpressed: () {
                            Get.toNamed(Routes.INSTRUCTORINFORMATION);
                          },
                          label: 'Unlock Now',
                          labelStyle: TextStyleUtil.rubik600(fontSize: 14.kh))
                      .paddingOnly(
                          top: 25.kh, bottom: 20.kw, left: 16.kw, right: 16.kw)
                ],
              ),
            )
          ],
        ));
  }
}
