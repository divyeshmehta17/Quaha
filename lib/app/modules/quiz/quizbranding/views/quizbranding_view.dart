import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/Quaha_Button.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../../components/coinRow.dart';
import '../controllers/quizbranding_controller.dart';

class QuizbrandingView extends GetView<QuizbrandingController> {
  const QuizbrandingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Color> containerColor = [
      Color(0xFF5DF627),
      Color(0xFFFF5B7E),
      Color(0xFFC0C0C0)
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            CustomCoinRowWidget().paddingOnly(top: 10.kh, bottom: 20.kh),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Icon(
                CupertinoIcons.xmark,
                color: Colors.white,
              ),
              leadingWidth: 5.kw,
              actions: [
                Icon(
                  Icons.share_outlined,
                  color: Colors.white,
                  size: 24.kh,
                )
              ],
              centerTitle: true,
              title: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  CommonImageView(
                    imagePath: ImageConstant.pngquoins,
                    height: 24.kh,
                  ),
                  Text(
                    '10',
                    style: TextStyleUtil.rubik500(fontSize: 14.kh),
                  )
                ],
              ),
            ),
            Container(
              height: 20.kh,
              decoration: BoxDecoration(
                  color: Color(0xFF1EB111),
                  borderRadius: BorderRadius.circular(50)),
            ).paddingOnly(bottom: 23.kh),
            AspectRatio(
              aspectRatio: 0.6,
              child: PageView.builder(
                  itemCount: controller.quizData.length,
                  controller: controller.pageController,
                  onPageChanged: (index) {
                    controller.pageIndex.value = index;
                    controller.isCorrectAns
                        .assignAll(List.generate(3, (_) => false));
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        CommonImageView(
                          imagePath: controller.pngquizimage[index],
                        ).paddingOnly(bottom: 20.kh),
                        Text(
                          controller.quizData[index]['question'],
                          style: TextStyleUtil.rubik500(fontSize: 18.kh),
                        ),
                        ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            padding: EdgeInsets.only(
                              top: 16.kh,
                            ),
                            itemBuilder: (context, int index) {
                              return Obx(
                                () => GestureDetector(
                                  onTap: () {
                                    if (controller.quizData[controller.pageIndex
                                            .value]['options'][index] ==
                                        controller.quizData[controller.pageIndex
                                            .value]['answers'][index]) {
                                      controller.isCorrectAns[index] = true;
                                    }
                                  },
                                  child: Container(
                                    height: 50.kh,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.kh),
                                      border: Border.all(
                                          width: 2.kw,
                                          color: containerColor[index]),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          controller.quizData[controller
                                              .pageIndex
                                              .value]['options'][index],
                                          style: TextStyleUtil.rubik500(
                                              fontSize: 18.kh),
                                        ).paddingOnly(left: 10.kw),
                                        controller.isCorrectAns[index]
                                            ? Icon(
                                                CupertinoIcons
                                                    .checkmark_alt_circle_fill,
                                                color: containerColor[index],
                                              )
                                            : SizedBox()
                                      ],
                                    ).paddingOnly(right: 12.kw),
                                  ).paddingOnly(
                                      bottom: 24.kh, left: 58.kw, right: 58.kw),
                                ),
                              );
                            }),
                        GestureDetector(
                          onTap: () {
                            Get.dialog(
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Scaffold(
                                  backgroundColor:
                                      Colors.black.withOpacity(0.5),
                                  body: SingleChildScrollView(
                                    child: hintPopUp().paddingOnly(
                                        top: 134.kh,
                                        left: 35.kh,
                                        right: 35,
                                        bottom: 32.kh),
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 50.kh,
                            width: 154.kw,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.kh),
                              color: Color(0xFFFF8600),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Hint 10',
                                  style:
                                      TextStyleUtil.rubik500(fontSize: 20.kh),
                                ),
                                CommonImageView(
                                  imagePath: ImageConstant.pngquoins,
                                  height: 24.kh,
                                ),
                              ],
                            ),
                          ).paddingOnly(bottom: 12.kh),
                        ),
                      ],
                    );
                  }),
            ),
            QuahaButton(
                    onpressed: () {
                      if (controller.pageIndex.value >
                          controller.currentPageIndex.value) {
                        Get.toNamed(Routes.QUIZCOMPLETED);
                      } else {
                        controller.pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      }
                    },
                    label: 'Continue',
                    labelStyle: TextStyleUtil.rubik600(fontSize: 14.kh))
                .paddingOnly(bottom: 17.kh)
          ],
        ).paddingOnly(left: 16.kh, right: 16.kh, bottom: 16.kh)),
      ),
    );
  }
}

class hintPopUp extends StatelessWidget {
  const hintPopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CommonImageView(
              svgPath: ImageConstant.svgspeechbubble,
            ),
            Text(
              'Hint',
              style: TextStyleUtil.rubik600(fontSize: 14.kh),
            ),
          ],
        ).paddingOnly(left: 150.kw),
        CommonImageView(
          imagePath: ImageConstant.pnghintZebra,
        ).paddingOnly(bottom: 23.kh),
        Container(
          decoration: BoxDecoration(
              color: context.containerBG,
              borderRadius: BorderRadius.circular(18.kw)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CommonImageView(
                    imagePath: ImageConstant.pngquoins,
                    height: 25.kh,
                    width: 25.kw,
                  ).paddingOnly(right: 8.kw),
                  Text(
                    '-10',
                    style: TextStyleUtil.rubik500(fontSize: 20.kw),
                  ),
                ],
              ),
              Text(
                'I belive its either Podcast set up or Finding a Podcast Platform',
                style: TextStyleUtil.rubik500(
                  fontSize: 14.kh,
                ),
              ).paddingOnly(top: 25.kh, bottom: 54.kh),
            ],
          ).paddingOnly(left: 25.kw, right: 12.kw, top: 25.kh),
        ),
        QuahaButton(
                onpressed: () {
                  Get.back();
                },
                backgroundColor: Colors.blue,
                label: 'Continue',
                labelStyle: TextStyleUtil.rubik600(fontSize: 14.kh))
            .paddingOnly(top: 56.kh),
      ],
    );
  }
}
