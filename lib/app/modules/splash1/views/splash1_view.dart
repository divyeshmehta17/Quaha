import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../../../services/custombuttons.dart';
import '../../../services/text_style_util.dart';
import '../../Login/views/login_view.dart';

class Splash1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    int currentPage = 0;

    return Scaffold(
      backgroundColor: context.brandColor1,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                currentPage = index;
              },
              children: [
                SplashPage(
                  imageAsset: ImageConstant.pngBrainstorming,
                  title: 'COURSES',
                  description:
                      'Unlock valuable insights to excel your career and start-up.',
                  additionalText: 'Are you Ready?',
                ),
                SplashPage(
                  imageAsset: ImageConstant.pngPabloBooks,
                  title: 'COMMUNITY',
                  description:
                      'Join the Quaha Community that supports you through your journey',
                ),
                SplashPage(
                  imageAsset: ImageConstant.pngGirlDrinkingCoffee,
                  title: 'QUIZ',
                  description:
                      'Have fun daily, playing and learning. Compete, earn rewards and win.',
                ),
                SplashPage(
                  imageAsset: 'assets/images/handy-deadline.png',
                  title: 'MARKETPLACE',
                  description:
                      'Use your Quoins or Qrowns to spend on cool Prizes, products, or donate to the charity of your choice.',
                ),
              ],
            ),
          ),
          NextButton(
            onTap: () {
              if (currentPage < 3) {
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
            currentPage: currentPage,
          ).paddingOnly(bottom: 48.kh),
        ],
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
          CommonImageView(
            imagePath: imageAsset,
            svgPath: svgAsset,
          ),
          35.kheightBox,
          Text(
            title,
            style: TextStyleUtil.roboto600(fontSize: 24.kh),
          ),
          37.kheightBox,
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyleUtil.montserrat400(fontSize: 17.kh),
          ),
          37.kheightBox,
          if (additionalText !=
              null) // Render the additional text widget if provided
            Text(
              additionalText!,
              textAlign: TextAlign.center,
              style: TextStyleUtil.montserrat400(
                  fontSize: 25.kh), // Customize the style as needed
            )
        ],
      ),
    );
  }
}
