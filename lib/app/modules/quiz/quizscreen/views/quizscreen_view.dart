import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../../../../components/ContainerCard.dart';
import '../../../../components/coinRow.dart';
import '../../../../constants/image_constant.dart';
import '../../../../services/text_style_util.dart';
import '../../../Categories/views/Categories_view.dart';
import '../controllers/quizscreen_controller.dart';

class QuizscreenView extends GetView<QuizscreenController> {
  QuizscreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => QuizscreenController());
    return Scaffold(
      backgroundColor: context.brandColor1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomCoinRowWidget().paddingOnly(top: 17.kh, bottom: 28.kh),
                  Container(
                    decoration: BoxDecoration(
                      color: context.containerBG,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(ImageConstant.svgranking)
                                .paddingOnly(right: 16.kw),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rank',
                                  style:
                                      TextStyleUtil.rubik700(fontSize: 14.kh),
                                ),
                                Text(
                                  '#56/650',
                                  style:
                                      TextStyleUtil.rubik700(fontSize: 14.kh),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(ImageConstant.pngquoins)
                                .paddingOnly(right: 16.kw),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Quoins',
                                  style:
                                      TextStyleUtil.rubik700(fontSize: 14.kh),
                                ),
                                Text(
                                  '4590',
                                  style:
                                      TextStyleUtil.rubik700(fontSize: 14.kh),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 15.kw, vertical: 12.kh),
                  ),
                  const ContainerCard().paddingOnly(top: 24.kh, bottom: 23.kh),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discover',
                        style: TextStyleUtil.rubik500(fontSize: 20.kh),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.DISCOVERALLCONTENT);
                        },
                        child: Text('See All',
                            style: TextStyleUtil.rubik500(fontSize: 14.kh)),
                      ),
                    ],
                  ).paddingOnly(bottom: 17.kh),
                  const DiscoverCard(),
                  Text(
                    'Collection',
                    style: TextStyleUtil.rubik500(fontSize: 20.kh),
                  ).paddingOnly(top: 24.kh, bottom: 11.kh),
                  const CollectionsListViewBuilder(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category',
                        style: TextStyleUtil.rubik500(fontSize: 20.kh),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(const Categories(), curve: Curves.easeOut);
                        },
                        child: Text(
                          'See All',
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        ),
                      ),
                    ],
                  ).paddingOnly(bottom: 16.kh),
                  const CategoryListViewBuilder(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rewards',
                        style: TextStyleUtil.rubik500(fontSize: 20.kh),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(const Categories(), curve: Curves.easeOut);
                        },
                        child: Text(
                          'See All',
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        ),
                      ),
                    ],
                  ).paddingOnly(bottom: 16.kh, top: 24.kh),
                  const RewardsListViewBuilder(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exiciting Quizes',
                        style: TextStyleUtil.rubik500(fontSize: 20.kh),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.EXCITINGQUIZESSEEALL);
                        },
                        child: Text(
                          'See All',
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        ),
                      ),
                    ],
                  ).paddingOnly(bottom: 16.kh, top: 24.kh),
                  const ExcitingQuizListViewBuilder(),
                  Obx(() {
                    final formattedTime = controller.formattedTime;
                    return Stack(
                      children: [
                        RoundedProgressBar(
                          height: 85,
                          style: RoundedProgressBarStyle(
                            widthShadow: 0,
                            borderWidth: 0,
                            backgroundProgress: const Color(0xFF0D73AE),
                            colorProgress: const Color(0xFF008BDC),
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          borderRadius: BorderRadius.circular(8),
                          percent: controller.elapsedSeconds.value / 36,
                          childRight: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      ImageConstant.svgpiratetreasure),
                                  Text(
                                    '100 free coins \nevery hour',
                                    textAlign: TextAlign.start,
                                    style: TextStyleUtil.rubikWetPaint400(
                                        fontSize: 17.kh),
                                  ),
                                ],
                              ),
                              Text(
                                formattedTime,
                                textAlign: TextAlign.end,
                                style: TextStyleUtil.roboto500(fontSize: 14.kh),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 5,
                          top: 20,
                          child: SvgPicture.asset(
                            ImageConstant.svgcloud,
                            height: 12,
                            color: const Color.fromRGBO(221, 238, 251, 0.62),
                          ),
                        ),
                        Positioned(
                          left: 200,
                          top: 5,
                          child: SvgPicture.asset(ImageConstant.svgcloud),
                        ),
                        Positioned(
                          left: 220,
                          top: 75,
                          child: Transform.rotate(
                            angle: 0.2,
                            child: SvgPicture.asset(
                              ImageConstant.svgcloud,
                              height: 12,
                              color: const Color.fromRGBO(221, 238, 251, 0.62),
                            ),
                          ),
                        ),
                      ],
                    );
                  }).paddingOnly(top: 24.kh),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quiz from Virtual Insights',
                        style: TextStyleUtil.rubik500(fontSize: 20.kh),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(const Categories(), curve: Curves.easeOut);
                        },
                        child: Text(
                          'See All',
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        ),
                      ),
                    ],
                  ).paddingOnly(
                    bottom: 16.kh,
                  ),
                  const VirualInsightsListViewBuilder()
                      .paddingOnly(bottom: 38.kw),
                  Container(
                    height: 148.kh,
                    width: 325.kw,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            colors: [Color(0xFF7195F2), Color(0xFF00DC9A)])),
                  )
                ],
              ).paddingSymmetric(horizontal: 16.kw, vertical: 17.kh),
            ],
          ),
        ),
      ),
    );
  }
}

class VirualInsightsListViewBuilder extends StatelessWidget {
  const VirualInsightsListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165.kh,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Image.asset(ImageConstant.pngexcitingquizbg),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(3)),
                      child: Text(
                        '14 Q\'s',
                        style: TextStyleUtil.rubik500(fontSize: 8.kh),
                      ).paddingAll(5.kh),
                    ).paddingOnly(bottom: 8.kh, right: 8.kw)
                  ],
                ),
                Text(
                  'Achieving Team Success',
                  style: TextStyleUtil.rubik500(fontSize: 14.kh),
                ),
                Row(
                  children: [
                    SvgPicture.asset(ImageConstant.svgFacebook)
                        .paddingOnly(right: 8.kw),
                    Text(
                      'Facebook_Business',
                      style: TextStyleUtil.rubik500(fontSize: 10.kh),
                    ),
                  ],
                )
              ],
            ).paddingOnly(right: 16.kh);
          }),
    );
  }
}

class ExcitingQuizListViewBuilder extends StatelessWidget {
  const ExcitingQuizListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165.kh,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Image.asset(ImageConstant.pngexcitingquizbg),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(3)),
                      child: Text(
                        '14 Q\'s',
                        style: TextStyleUtil.rubik500(fontSize: 8.kh),
                      ).paddingAll(5.kh),
                    ).paddingOnly(bottom: 8.kh, right: 8.kw)
                  ],
                ),
                Text(
                  'Achieving Team Success',
                  style: TextStyleUtil.rubik500(fontSize: 14.kh),
                ),
                Row(
                  children: [
                    SvgPicture.asset(ImageConstant.svgFacebook)
                        .paddingOnly(right: 8.kw),
                    Text(
                      'Facebook_Business',
                      style: TextStyleUtil.rubik500(fontSize: 10.kh),
                    ),
                  ],
                )
              ],
            ).paddingOnly(right: 16.kh);
          }),
    );
  }
}

class RewardsListViewBuilder extends StatelessWidget {
  const RewardsListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.kh,
      decoration: BoxDecoration(
          color: const Color(0xFF5CA3E2),
          borderRadius: BorderRadius.circular(8)),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return Container(
              decoration: BoxDecoration(
                color: context.containerBG,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(ImageConstant.pngquoins),
                      Text(
                        'Unlock Quoins',
                        style: TextStyleUtil.rubik500(fontSize: 14.kh),
                      ).paddingOnly(
                        top: 4.kh,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            children: [
                              Text(
                                'Watch a video to unlock',
                                style: TextStyleUtil.rubik500(
                                    fontSize: 12.kh, color: Colors.black),
                              ).paddingAll(8.kh),
                            ],
                          ))
                    ],
                  )
                ],
              ).paddingSymmetric(horizontal: 15.kw, vertical: 12.kh),
            ).paddingOnly(right: 20.kw, top: 16.kh, bottom: 16.kh, left: 16.kh);
          }),
    );
  }
}

class CategoryListViewBuilder extends StatelessWidget {
  const CategoryListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return Container(
              decoration: BoxDecoration(
                color: context.containerBG,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(ImageConstant.svgranking)
                      .paddingOnly(bottom: 20.kh),
                  Column(
                    children: [
                      Text(
                        'Mathematics',
                        style: TextStyleUtil.rubik500(fontSize: 14.kh),
                      ),
                      Text(
                        '21 Quizes',
                        style: TextStyleUtil.rubik500(fontSize: 14.kh),
                      ),
                    ],
                  )
                ],
              ).paddingSymmetric(horizontal: 15.kw, vertical: 12.kh),
            ).paddingOnly(right: 20.kw);
          }),
    );
  }
}

class CollectionsListViewBuilder extends StatelessWidget {
  const CollectionsListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Image.asset(ImageConstant.pngnatgeobg),
                Image.asset(ImageConstant.pngnatgeo)
                    .paddingOnly(left: 10.kw, bottom: 15.kh),
              ],
            ).paddingOnly(right: 16.kh);
          }),
    );
  }
}

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 33.kh),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
              colors: [Color(0xFF7195F2), Color(0xFFDC8400)])),
      child: Column(
        children: [
          Container(
            child: Image.asset(ImageConstant.pngAibg),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                  8,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Text(
                        'Play At',
                        style: TextStyleUtil.rubik500(
                            fontSize: 12.kh, color: Colors.black),
                      ),
                      Image.asset(
                        ImageConstant.pngquoins,
                        height: 20.kh,
                        width: 20.kw,
                      )
                    ],
                  ).paddingAll(5.kh),
                ).paddingOnly(top: 6.kh, bottom: 5.kh),
                Row(
                  children: [
                    SvgPicture.asset(ImageConstant.svgFacebook)
                        .paddingOnly(right: 9.kw),
                    Text(
                      'Quaha Futures',
                      style: TextStyleUtil.rubik500(fontSize: 10.kh),
                    )
                  ],
                )
              ],
            ).paddingOnly(left: 12.kw, right: 12.kw),
          )
        ],
      ),
    );
  }
}
