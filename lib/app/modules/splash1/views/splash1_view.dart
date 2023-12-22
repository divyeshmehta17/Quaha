import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/splash1/controllers/splash1_controller.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../../../services/custombuttons.dart';
import '../../../services/text_style_util.dart';
import '../../Login/views/login_view.dart';

class Splash1View extends GetView<Splash1Controller> {
  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    Get.put(Splash1Controller());

    return Scaffold(
      backgroundColor: context.brandColor1,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.BOTTOMNAVBAR);
                    },
                    child: Text(
                      'Skip Now',
                      style: TextStyleUtil.rubik600(fontSize: 17.kh),
                    )),
              ],
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  controller.currentPage.value = index / 2;
                },
                children: [
                  SplashPage(
                    imageAsset: ImageConstant.pngBrainstorming,
                    title: 'Courses',
                    description:
                        'Unlock the knowledge to excel your career and start-up.',
                    additionalText: 'Are you Ready?',
                  ),
                  SplashPage(
                    imageAsset: ImageConstant.pngPabloBooks,
                    title: 'COMMUNITY',
                    description: 'Shape the future of learning together!',
                    additionalText: 'Are you Ready to commit?',
                  ),
                  SplashPage(
                    imageAsset: ImageConstant.pngGirlDrinkingCoffee,
                    title: 'QUIZ',
                    description:
                        'Have fun daily, playing and learning. Compete, earn rewards and win.',
                  ),
                ],
              ),
            ),
            Obx(
              () => NextButton(
                onTap: () {
                  print(controller.currentPage.value);
                  if (controller.currentPage.value < 1) {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.fastOutSlowIn,
                    );
                  } else {
                    Get.to(LoginView(), transition: Transition.fade);
                  }
                },
                color: Colors.blue,
                iconColor: Colors.white,
                currentPage: controller.currentPage.value,
              ).paddingOnly(bottom: 48.kh),
            ),
          ],
        ).paddingOnly(left: 18.kw, right: 18.kw),
      ),
    );
  }
}

class SplashPage extends StatelessWidget {
  final String? imageAsset;
  final String? svgAsset;
  final String title;
  final String description;
  final String? additionalText; // New optional text widget

  SplashPage({
    this.imageAsset,
    required this.title,
    required this.description,
    this.svgAsset,
    this.additionalText,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.brandColor1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CommonImageView(
              imagePath: imageAsset,
              svgPath: svgAsset,
            ),
          ),
          35.kheightBox,
          Center(
            child: Text(
              title,
              style: TextStyleUtil.roboto600(fontSize: 24.kh),
            ),
          ),
          37.kheightBox,
          Center(
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyleUtil.montserrat400(fontSize: 17.kh),
            ),
          ),
          37.kheightBox,
          if (additionalText !=
              null) // Render the additional text widget if provided
            Center(
              child: Text(
                additionalText!,
                textAlign: TextAlign.center,
                style: TextStyleUtil.montserrat400(
                    fontSize: 25.kh), // Customize the style as needed
              ),
            )
        ],
      ),
    );
  }
}
