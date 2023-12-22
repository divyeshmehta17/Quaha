import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/Quaha_Button.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/components/quaha_app_bar.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/quiz/quizscreen/views/quizscreen_view.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../controllers/quizcompleted_controller.dart';

class QuizcompletedView extends GetView<QuizcompletedController> {
  const QuizcompletedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var data = [2.0, 2.0, 1.5, 2.5, 3.0, 3.0, 2.0, 2.0, 3.0, 1.0, 3.0];

    return Scaffold(
        appBar: QuahaAppBar(
          leading: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.all(5.kw),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.kw))),
              onPressed: () {},
              child: Text(
                'Share',
                style: TextStyleUtil.rubik600(fontSize: 12.kh),
              )).paddingOnly(top: 20, left: 24),
          title: const Text('Good Job!').paddingOnly(top: 20.kw),
          leadingWidth: 80.kw,
          centerTitle: true,
          textStyle: TextStyleUtil.rubik500(fontSize: 16.kh),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 24.kw,
              ),
            ).paddingOnly(top: 20.kw, right: 24.kw)
          ],
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.kw)),
                  child: Column(
                    children: [
                      CommonImageView(
                        imagePath: ImageConstant.pngquiztrophy,
                      ).paddingOnly(
                          left: 94.kw, right: 94.kw, top: 24.kh, bottom: 8.kh),
                      Text(
                        'You get +80 Coins',
                        style: TextStyleUtil.rubik500(fontSize: 16.kh),
                      ).paddingOnly(bottom: 24.kh),
                      QuahaButton(
                        backgroundColor: context.brandColor1,
                        borderRadius: BorderRadius.circular(20.kw),
                        onpressed: () {
                          Get.toNamed(Routes.QUIZREVIEW);
                        },
                        labelStyle: TextStyleUtil.rubik600(fontSize: 16.kh),
                        label: 'Check Correct Answer',
                      ).paddingOnly(bottom: 24.kh, left: 45.kw, right: 45.kw)
                    ],
                  ),
                ),
                quizResults(
                  data: data,
                ).paddingOnly(bottom: 16.kh, top: 24.kh),
              ],
            ).paddingOnly(left: 24.kw, right: 24.kw, top: 20.kh),
          ),
        ));
  }
}

class ChartData {
  ChartData(this.x, this.high, this.low);
  final DateTime x;
  final double high;
  final double low;
}

class quizResults extends StatelessWidget {
  final QuizcompletedController controller = Get.find();
  final List<double> data;

  quizResults({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    List<ChartData> chartData = List.generate(
      data.length,
      (index) => ChartData(
          DateTime.now().add(Duration(days: index)), data[index], 0.0),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Accuration Answer',
          style: TextStyleUtil.rubik600(fontSize: 12.kh),
        ).paddingOnly(bottom: 16.kh),
        Sparkline(
          data: data,
          enableGridLines: true,
          enableThreshold: true,
          gridLineAmount: 2,
          gridLineLabelPrecision: 1,
          fillMode: FillMode.below,
          fillGradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              const Color(0xFF39EBEB00),
              const Color(0xFF1AE2CA66).withOpacity(0.04),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CORRECT ANSWER',
                  style: TextStyleUtil.rubik500(fontSize: 12.kh),
                ).paddingOnly(bottom: 8.kh),
                Text(
                  '7 questions',
                  style: TextStyleUtil.rubik500(fontSize: 20.kh),
                ).paddingOnly(bottom: 16.kh),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'COMPLETION',
                  style: TextStyleUtil.rubik500(fontSize: 12.kh),
                ).paddingOnly(bottom: 8.kh),
                Text(
                  '80%',
                  style: TextStyleUtil.rubik500(fontSize: 20.kh),
                ).paddingOnly(bottom: 16.kh),
              ],
            ).paddingOnly(right: 45.kw),
          ],
        ).paddingOnly(top: 24.kh),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SKIPPED',
                  style: TextStyleUtil.rubik500(fontSize: 12.kh),
                ).paddingOnly(bottom: 8.kh),
                Text(
                  '2',
                  style: TextStyleUtil.rubik500(fontSize: 20.kh),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'INCORRECT ANSWER',
                  style: TextStyleUtil.rubik500(fontSize: 12.kh),
                ).paddingOnly(bottom: 8.kh),
                Text(
                  '1',
                  style: TextStyleUtil.rubik500(fontSize: 20.kh),
                ),
              ],
            ),
          ],
        ),
        QuahaButton(
          onpressed: () async {
            Get.dialog(
              quizPopUp(),
            );

            Future.delayed(const Duration(milliseconds: 5),
                () => controller.isZebraVisible.value = true);
          },
          labelStyle: TextStyleUtil.rubik500(
            fontSize: 16.kh,
          ),
          label: 'Done',
        ).paddingOnly(top: 24.kh)
      ],
    );
  }
}

class quizPopUp extends StatelessWidget {
  final QuizcompletedController controller = Get.find();
  quizPopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: context.brandColor1,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Obx(
                      () => AnimatedPositioned(
                        duration: const Duration(seconds: 1),
                        bottom: () {
                          if (controller.isZebraVisible.value) {
                            return 220.0;
                          } else {
                            return 0.0;
                          }
                        }(), // Change bottom value based on zebra visibility
                        child: CommonImageView(
                          imagePath: ImageConstant.pngstraigthzebra,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20.kw)),
                      child: Column(
                        children: [
                          CommonImageView(
                            imagePath: ImageConstant.pngquiztrophy,
                            width: 186.kw,
                          ).paddingOnly(
                              left: 49.kw,
                              right: 49.kw,
                              top: 17.kh,
                              bottom: 8.kh),
                          Text(
                            'Earn More Coins',
                            style: TextStyleUtil.rubik500(fontSize: 24.kh),
                          ).paddingOnly(bottom: 8.kh),
                          CommonImageView(
                            svgPath: ImageConstant.svgtreasurepurse,
                          ).paddingOnly(bottom: 15.kh),
                        ],
                      ),
                    ).paddingOnly(top: 167.kh),
                  ],
                ),
                const rewardsBanner().paddingOnly(top: 38.kh),
                QuahaButton(
                        onpressed: () {},
                        label: 'Continue',
                        labelStyle: TextStyleUtil.rubik600(fontSize: 14.kh))
                    .paddingOnly(bottom: 18.kh, top: 46.kh)
              ],
            ).paddingOnly(left: 16.kw, right: 16.kw),
          ),
        ),
      ),
    );
  }
}
