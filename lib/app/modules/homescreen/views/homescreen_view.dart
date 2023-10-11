import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/Quaha_Text_Field.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../components/coinRow.dart';
import '../../../components/menurow.dart';
import '../controllers/homescreen_controller.dart';

class HomescreenView extends GetView<HomescreenController> {
  const HomescreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomescreenController());
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomCoinRowWidget(),
            CustomMenuRowWidget(),
            QuahaTextField(
                controller: controller.searchController,
                hintText: 'Search Bar',
                obscureText: false,
                textStyle: TextStyleUtil.roboto400(fontSize: 12.kh),
                prefixIcon: CommonImageView(
                  svgPath: ImageConstant.svgSearch,
                  height: 24.kh,
                  width: 24.kw,
                )),
            ContainerCard().paddingOnly(top: 24.kh, bottom: 24.kh),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Category',
                  style: TextStyleUtil.roboto600(fontSize: 24.kh),
                ),
                Text(
                  'See All',
                  style: TextStyleUtil.roboto500(fontSize: 12.kh),
                ),
              ],
            ).paddingOnly(bottom: 24.kh),
            QuahaCategoryListView(
              text: 'Design',
              height: 90,
            ).paddingOnly(bottom: 24.kh),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Courses',
                  style: TextStyleUtil.roboto600(fontSize: 24.kh),
                ),
                Text(
                  'See All',
                  style: TextStyleUtil.roboto500(fontSize: 12.kh),
                ),
              ],
            ).paddingOnly(bottom: 24.kh),
            QuahaPopularCoursesListView(
              text: 'Market Course \nby xyz',
            ).paddingOnly(bottom: 24.kh),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Courses',
                  style: TextStyleUtil.roboto600(fontSize: 24.kh),
                ),
                Text(
                  'See All',
                  style: TextStyleUtil.roboto500(fontSize: 12.kh),
                ),
              ],
            ).paddingOnly(bottom: 24.kh),
            QuahaNewCoursesListView(
              text: 'Dummy Text',
            )
          ],
        ).paddingSymmetric(horizontal: 16.kw, vertical: 16.kh),
      ),
    );
  }
}

class ContainerCard extends StatelessWidget {
  const ContainerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(colors: [
            Color(0xFFF27171),
            Color(0xFFDC0000),
          ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    'Enjoy your favourite\ncourses with Us',
                    style: TextStyleUtil.rubikWetPaint400(fontSize: 16),
                    textAlign: TextAlign.center,
                  ).paddingOnly(bottom: 16.kh, right: 6.kw),
                  Text(
                    'Hurry up!',
                    style: TextStyleUtil.rubikWetPaint400(fontSize: 16),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              SvgPicture.asset(ImageConstant.svgbook),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(ImageConstant.svgpencil),
            ],
          ),
        ],
      ),
    );
  }
}

class QuahaCategoryListView extends StatelessWidget {
  String text;
  double height;
  QuahaCategoryListView({super.key, required this.text, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return Container(
              width: 92,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Center(
                child: Text(
                  text,
                  style: TextStyleUtil.rubikWetPaint400(
                      fontSize: 12, color: Colors.black),
                ),
              ),
            ).paddingOnly(right: 16.kw);
          }),
    );
  }
}

class QuahaPopularCoursesListView extends StatelessWidget {
  String text;

  QuahaPopularCoursesListView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 191.kh,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return Container(
              width: 170.kh,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: context.containerBG),
              child: Column(
                children: [
                  SvgPicture.asset(ImageConstant.svgmarektingdummyimage)
                      .paddingOnly(top: 7.kh, bottom: 5.kh),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        text,
                        style: TextStyleUtil.rubik500(
                          fontSize: 14,
                        ),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        '4.5',
                        style: TextStyleUtil.rubik500(
                          fontSize: 14,
                        ),
                      )
                    ],
                  ).paddingOnly(left: 6.kw),
                ],
              ),
            ).paddingOnly(right: 16.kw);
          }),
    );
  }
}

class QuahaNewCoursesListView extends StatelessWidget {
  String text;

  QuahaNewCoursesListView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 191.kh,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return Container(
              width: 170.kh,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: context.containerBG),
              child: Column(
                children: [
                  SvgPicture.asset(ImageConstant.svgmarektingdummyimage)
                      .paddingOnly(top: 7.kh, bottom: 5.kh),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        text,
                        style: TextStyleUtil.rubik500(
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            '4.5',
                            style: TextStyleUtil.rubik500(
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ],
                  ).paddingOnly(left: 6.kw),
                ],
              ),
            ).paddingOnly(right: 16.kw);
          }),
    );
  }
}
