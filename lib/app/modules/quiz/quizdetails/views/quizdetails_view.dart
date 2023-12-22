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

import '../controllers/quizdetails_controller.dart';

class QuizdetailsView extends GetView<QuizdetailsController> {
  const QuizdetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Center(
                    child: CommonImageView(
                      imagePath: ImageConstant.pngreadyforquiz,
                      fit: BoxFit.fill,
                      width: 375.kw,
                    ),
                  ),
                  QuahaAppBar(
                    color: Colors.transparent,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'SPORTS',
                    style: TextStyleUtil.rubik500(
                        fontSize: 14.kh, letterSpacing: 1),
                  ),
                  Text('Basic Trivia Quiz',
                      style: TextStyleUtil.rubik500(
                        fontSize: 24.kh,
                      )).paddingOnly(bottom: 16.kh, top: 16.kh),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: context.containerBG),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: CommonImageView(
                            svgPath: ImageConstant.svgquestionmark,
                          ),
                        ),
                        Text(
                          '10 Questions',
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        ),
                        Container(
                          width: 1,
                          height: 32.kh,
                          decoration: const BoxDecoration(color: Colors.grey),
                        ).paddingOnly(top: 16.kh, bottom: 16.kh),
                        CommonImageView(
                          imagePath: ImageConstant.pngquoins,
                          height: 24.kh,
                          width: 24.kw,
                        ),
                        Text(
                          '10 Quoins',
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        ),
                      ],
                    ).paddingOnly(left: 22.kw, right: 36.kw),
                  ),
                  Text(
                    'DESCRIPTION',
                    style: TextStyleUtil.rubik500(
                        fontSize: 14.kh, letterSpacing: 1),
                  ).paddingOnly(top: 24.kh, bottom: 12.kh),
                  Text(
                    'Any time is a good time for a quiz and even better if that happens to be a football themed quiz!',
                    style: TextStyleUtil.rubik400(
                      fontSize: 16.kh,
                    ),
                  ).paddingOnly(top: 12.kh, bottom: 24.kh),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.kw,
                        backgroundColor: const Color(0xFFC4D0FB),
                        backgroundImage: AssetImage(ImageConstant.pngavatar),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Brandon Curtis',
                            style: TextStyleUtil.rubik500(fontSize: 14.kh),
                          ),
                          Text(
                            'Creator',
                            style: TextStyleUtil.rubik400(fontSize: 12.kh),
                          ),
                        ],
                      ).paddingOnly(left: 12.kw)
                    ],
                  )
                ],
              ).paddingOnly(
                  left: 16.kw, right: 16.kw, top: 23.kh, bottom: 65.kh),
              QuahaButton(
                      onpressed: () {
                        Get.toNamed(Routes.QUIZBRANDING);
                      },
                      isCost: true,
                      label: 'Join With',
                      labelStyle: TextStyleUtil.rubik500(fontSize: 16.kh))
                  .paddingOnly(
                left: 16.kw,
                right: 16.kw,
              )
            ],
          ),
        ),
      ),
    );
  }
}
