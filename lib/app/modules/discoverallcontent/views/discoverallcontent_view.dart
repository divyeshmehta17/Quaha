import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../components/QuahaPopularCourses.dart';
import '../../../components/quaha_app_bar.dart';
import '../../quiz/quizintro/views/quizintro_view.dart';
import '../controllers/discoverallcontent_controller.dart';

List QuizPage = [
  introView(
      onpressed: () {},
      label: 'Tips',
      description:
          'Join the ultimate quiz platform and challenge your friends and family to a battle of wits!\nWith exciting competitions and rewards up for grabs, you\'ll have a blast while learning new things and outsmarting everyone.\n\nPut your knowledge to the test and earn bragging rights as the ultimate quiz champion. Sign up now and let the games begin!')
];

class DiscoverallcontentView extends GetView<DiscoverallcontentController> {
  const DiscoverallcontentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: context.brandColor1,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    CommonImageView(
                      imagePath: ImageConstant.pngwomenwithcamera,
                    ),
                    QuahaAppBar(
                      color: Colors.transparent,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CommonImageView(
                          svgPath: ImageConstant.svgQuoraIcon,
                        ).paddingOnly(left: 16.kw, top: 93.kh, right: 15.kw),
                        Text(
                          'Quora Academy',
                          style: TextStyleUtil.rubik600(fontSize: 24.kh),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ButtonsTabBar(
                      buttonMargin: EdgeInsets.only(top: 5.kh, bottom: 5.kh),
                      backgroundColor: context.containerBG,
                      unselectedBackgroundColor: Colors.transparent,
                      unselectedLabelStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyleUtil.rubik500(fontSize: 18.kh),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      tabs: const [
                        Tab(
                          text: 'Content',
                        ),
                        Tab(
                          text: 'About',
                        ),
                      ],
                    ),
                    Container(
                      height: 354.kh,
                      width: 336.kw,
                      child: TabBarView(children: [
                        QuahaDiscoverSeeAllGridView(
                          quizIntro: QuizPage,
                          categories: [
                            'Achieving Success',
                            'Achieving Success',
                            'Achieving Success',
                            'Achieving Success'
                          ],
                          crossAxisCount: 2,
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 2,
                          itemCount: 4,
                          imagePaths: ImageConstant.pngexcitingquizbg,
                        ),
                        Text(
                          'Embrace your journey of knowledge by upskilling and taking your life to the next level with Quora Academy',
                          style: TextStyleUtil.rubik600(fontSize: 16.kh),
                        ),
                      ]),
                    ).paddingOnly(top: 14.kh)
                  ],
                ).paddingOnly(left: 16.kh, top: 24.kh, right: 16.kh),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
