import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/Quaha_Button.dart';
import 'package:quaha/app/components/coinRow.dart';
import 'package:quaha/app/modules/coursetip/views/coursetip_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../components/common_image_view.dart';
import '../../../constants/image_constant.dart';
import '../controllers/coursepage2_controller.dart';

class Coursepage2View extends GetView<Coursepage2Controller> {
  const Coursepage2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.coursetipBGColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(
            () => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomCoinRowWidget()
                    .paddingOnly(right: 17.kw, left: 17.kw, bottom: 7.kh),
                if (controller.isQuiz.value == false)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.xmark,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.kw),
                          color: context.purple,
                        ),
                        child: Text(
                          '${controller.updatedIndex}/${controller.courseContent.length + 1} ',
                          style: TextStyleUtil.rubik500(fontSize: 12.kh),
                        ).paddingAll(5.kh),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ).paddingOnly(top: 10.kh)
                else
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border(
                                top: BorderSide(color: context.grey, width: 2),
                                bottom:
                                    BorderSide(color: context.grey, width: 2))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Quiz',
                              style: TextStyleUtil.rubik500(fontSize: 18.kh),
                            ),
                            Row(
                              children: [
                                CommonImageView(
                                  svgPath: ImageConstant.svgdollar,
                                ).paddingOnly(right: 8.kw),
                                Text(
                                  '10',
                                  style:
                                      TextStyleUtil.rubik500(fontSize: 14.kh),
                                ),
                              ],
                            )
                          ],
                        ).paddingOnly(
                            left: 22.kw,
                            right: 13.kw,
                            top: 12.kh,
                            bottom: 9.kh),
                      ),
                      Text(
                        'Select the correct answers',
                        style: TextStyleUtil.rubik500(fontSize: 14.kh),
                      ).paddingOnly(top: 15.kh, left: 17.kw),
                    ],
                  ),
                AspectRatio(
                  aspectRatio: 0.65,
                  child: PageView.builder(
                    controller: controller.pageController,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.courseContent.length + 1,
                    onPageChanged: (index) {
                      controller.updatePageIndex(index);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      if (index < controller.courseContent.length) {
                        return courseMaterial(
                          label: controller.courseContent[index],
                          imagepath: controller.courseContentImage[index],
                          isQuiz: controller.isQuiz.value,
                        ).paddingOnly(right: 17.kw);
                      } else {
                        // Display the quiz page
                        return courseMaterial(
                          label:
                              'Develop an outline for every episode that summarizes each point you would like to discuss in them.',
                          isQuiz: true,
                        );
                      }
                    },
                  ),
                ).paddingOnly(top: 15.kh),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print(controller.updatedIndex.value);
                        print(controller.isQuiz.value);
                        controller.updatedIndex.value;
                        controller.pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                        if (controller.updatedIndex.value > 4) {
                          controller.isQuiz.value = false;
                        }
                      },
                      child: CommonImageView(
                        svgPath: ImageConstant.svgpodcastbackbutton,
                        height: 25.kh,
                        width: 25.kh,
                      ),
                    ).paddingOnly(left: 17.kw),
                    controller.updatedIndex.value == 4
                        ? CommonImageView(
                            imagePath: ImageConstant.pngquiggihead,
                          )
                        : const SizedBox(),
                    GestureDetector(
                      onTap: () {
                        print(controller.updatedIndex.value);
                        print(controller.isQuiz.value);
                        controller.pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                        if (controller.updatedIndex.value == 4) {
                          controller.isQuiz.value = true;
                        }
                      },
                      child: CommonImageView(
                        svgPath: ImageConstant.svgpodcastnextbutton,
                        height: 25.kh,
                        width: 25.kh,
                      ),
                    ),
                  ],
                ).paddingOnly(right: 17.kw, bottom: 29.kh),
              ],
            ).paddingOnly(top: 17.kw),
          ),
        ),
      ),
    );
  }
}

class courseMaterial extends StatelessWidget {
  final String? label;
  final bool isQuiz;
  final String? imagepath;
  const courseMaterial({
    super.key,
    this.label,
    this.imagepath,
    this.isQuiz = true,
  });

  @override
  Widget build(BuildContext context) {
    return isQuiz == false
        ? Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.kw)),
                child: CommonImageView(
                  imagePath: imagepath,
                ),
              ).paddingOnly(bottom: 30.kh, left: 18.kw),
              courseTextContainer(
                label: label ?? '',
                style: TextStyleUtil.rubik400(
                    fontSize: 20.kh, color: Colors.black),
                labelpadding:
                    const EdgeInsets.only(left: 22, right: 22, top: 23),
              ).paddingOnly(left: 18.kw),
            ],
          )
        : Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.kw),
                  border: Border.all(color: Colors.black, width: 2),
                  color: Colors.white,
                ),
                child: Text(
                  label ?? '',
                  style: TextStyleUtil.rubik500(
                    fontSize: 20.kh,
                    color: Colors.black,
                  ),
                ).paddingOnly(
                  left: 21.kw,
                  right: 21.kw,
                  top: 13.kh,
                  bottom: 28.kh,
                ),
              ).paddingOnly(bottom: 30.kh, left: 18.kw, right: 18.kw),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 24.kw,
                  mainAxisSpacing: 24.kh,
                  childAspectRatio: 16 / 9,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final Coursepage2Controller controller =
                      Get.find(); // Access existing instance
                  return Obx(
                    () => Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [
                        GestureDetector(
                          onTap: () {
                            String selectedOption =
                                controller.quizOptions[index];
                            String correctAnswer = controller.answer[index];

                            if (selectedOption == correctAnswer) {
                              controller.isCorrectAns[index] = true;
                              Get.dialog(
                                GestureDetector(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Scaffold(
                                    backgroundColor:
                                        Colors.black.withOpacity(0.5),
                                    body: SingleChildScrollView(
                                      child: correctAnswerPopUp().paddingOnly(
                                          top: 134.kh,
                                          left: 35.kh,
                                          right: 35,
                                          bottom: 32.kh),
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              controller.isCorrectAns[index] = false;
                              Get.dialog(
                                GestureDetector(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Scaffold(
                                    backgroundColor:
                                        Colors.black.withOpacity(0.5),
                                    body: SingleChildScrollView(
                                      child: incorrectAnswerPopUp().paddingOnly(
                                          top: 134.kh,
                                          left: 35.kh,
                                          right: 35,
                                          bottom: 32.kh),
                                    ),
                                  ),
                                ),
                              );
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: controller.isCorrectAns[index] == true
                                  ? Colors.green
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(8.kw),
                            ),
                            child: Center(
                              child: Text(
                                controller.quizOptions[index],
                                textAlign: TextAlign.center,
                                style: TextStyleUtil.rubik500(
                                  fontSize: 18.kh,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (controller.isCorrectAns[index])
                          const Icon(
                            CupertinoIcons.check_mark_circled,
                            color: Colors.white,
                          ),
                      ],
                    ),
                  );
                },
              ).paddingOnly(left: 18.kw, right: 18.kw)
            ],
          );
  }
}

class incorrectAnswerPopUp extends StatelessWidget {
  const incorrectAnswerPopUp({
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
              svgColor: Colors.red,
            ),
            Text(
              'Ohh! No',
              style:
                  TextStyleUtil.rubik600(fontSize: 14.kh, color: Colors.white),
            ),
          ],
        ).paddingOnly(left: 150.kw),
        CommonImageView(
          svgPath: ImageConstant.svgquggisad,
        ).paddingOnly(bottom: 23.kh),
        Container(
          decoration: BoxDecoration(
              color: context.containerBG,
              borderRadius: BorderRadius.circular(18.kw)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    'Incorrect',
                    style: TextStyleUtil.rubik600(
                        fontSize: 18.kw, color: Color(0xFFFF8B8B)),
                  ).paddingOnly(right: 15.kw),
                  Icon(
                    Icons.info_outline_rounded,
                    color: Color(0xFFFF8B8B),
                    size: 20.kh,
                  )
                ],
              ),
              Text(
                'Determining a niche WILL help maintain  focus and impart a cohesive flow.',
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

class correctAnswerPopUp extends StatelessWidget {
  const correctAnswerPopUp({
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
              'Whooho!',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Correct',
                        style: TextStyleUtil.rubik600(
                            fontSize: 18.kw, color: Colors.blue),
                      ).paddingOnly(right: 15.kw),
                      Icon(
                        Icons.info_outline_rounded,
                        color: Colors.blue,
                        size: 20.kh,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CommonImageView(
                        imagePath: ImageConstant.pngquoins,
                        height: 25.kh,
                        width: 25.kw,
                      ).paddingOnly(right: 8.kw),
                      Text(
                        '10',
                        style: TextStyleUtil.rubik500(fontSize: 14.kw),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                'Developing a proper outline for every episode gives you an outcome of every episode',
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
