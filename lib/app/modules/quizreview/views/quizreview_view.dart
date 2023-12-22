import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quaha/app/components/Quaha_Button.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/components/quaha_app_bar.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../controllers/quizreview_controller.dart';

class QuizreviewView extends GetView<QuizreviewController> {
  const QuizreviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QuahaAppBar(
        leading: Text(''),
        title: Text('Review Answers'),
        textStyle: TextStyleUtil.rubik600(fontSize: 20.kh),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.QUIZCOMPLETED);
            },
            child: Icon(
              Icons.close,
              color: Colors.white,
              size: 24.kh,
            ).paddingOnly(right: 18.kw),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.kw)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("QUIZ NAME",
                              style: TextStyleUtil.rubik500(
                                fontSize: 14.kh,
                              )),
                          Text("English Premier League Quiz",
                              style: TextStyleUtil.rubik500(
                                fontSize: 16.kh,
                              )),
                        ],
                      ).paddingOnly(left: 16.kw, top: 24.kh, bottom: 24.kh),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF1996df),
                            borderRadius: BorderRadius.circular(12.kw)),
                        child: CommonImageView(
                          imagePath: ImageConstant.pngpuzzel,
                        ).paddingAll(12.kh),
                      ).paddingOnly(right: 16.kw),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: context.brandColor1,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.kw))),
                    child: Row(
                      children: [
                        CircularPercentIndicator(
                          radius: 50.kw,
                          percent: (8 / 10),
                          lineWidth: 10.kw,
                          progressColor: Colors.white,
                          backgroundColor: context.containerBG,
                          circularStrokeCap: CircularStrokeCap.round,
                          center: Text(
                            '8/10',
                            style: TextStyleUtil.rubik600(fontSize: 24.kh),
                          ),
                        ).paddingOnly(right: 16.kw),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'You answered 8 out of 10 questions',
                                style: TextStyleUtil.rubik500(fontSize: 16.kh),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ).paddingOnly(
                        left: 24.kw, right: 24.kw, top: 24.kh, bottom: 24.kh),
                  ).paddingOnly(left: 16.kw, right: 16.kw)
                ],
              ),
            ),
            Text(
              'Your Answers',
              style: TextStyleUtil.rubik500(fontSize: 18.kh),
            ).paddingOnly(top: 24.kh, bottom: 16.kh),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.kw),
                  color: context.containerBG),
              child: ListView.builder(
                  itemCount: controller.questions.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 32.kh,
                              width: 32.kw,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: context.brandColor1),
                              child: Center(
                                child: Text(
                                  '${index + 1}',
                                  style:
                                      TextStyleUtil.rubik500(fontSize: 16.kh),
                                ),
                              ),
                            ).paddingOnly(right: 16.kw),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    controller.questions[index],
                                    style:
                                        TextStyleUtil.rubik500(fontSize: 14.kh),
                                  ).paddingOnly(bottom: 8.kh),
                                  Text(
                                    controller.answer[index],
                                    style:
                                        TextStyleUtil.rubik400(fontSize: 14.kh),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              controller.isAnswered[index] == false
                                  ? Icons.info_outline_rounded
                                  : Icons.check_circle_outline_outlined,
                              color: controller.isAnswered[index] == false
                                  ? Colors.red
                                  : Colors.green,
                              size: 24.kh,
                            ).paddingOnly(left: 8.kw)
                          ],
                        ).paddingOnly(
                            left: 24.kw,
                            right: 24.kw,
                            top: 24.kh,
                            bottom: 24.kh),
                      ],
                    );
                  }),
            ).paddingOnly(bottom: 36.kh),
            QuahaButton(
                    onpressed: () {},
                    label: 'Submit',
                    labelStyle: TextStyleUtil.rubik500(fontSize: 16.kh))
                .paddingOnly(bottom: 16.kh)
          ],
        ).paddingOnly(left: 18.kw, right: 18.kw),
      ),
    );
  }
}
