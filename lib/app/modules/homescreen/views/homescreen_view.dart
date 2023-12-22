import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/QuahaCategoryListView.dart';
import 'package:quaha/app/components/QuahaPopularCourses.dart';
import 'package:quaha/app/components/coinRow.dart';
import 'package:quaha/app/components/quahanavigationmenu.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/popularcourses/views/popularcourses_view.dart';
import 'package:quaha/app/modules/searchscreen/views/searchscreen_view.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../components/ContainerCard.dart';
import '../../../components/menurow.dart';
import '../../Categories/views/Categories_view.dart';
import '../controllers/homescreen_controller.dart';

class HomescreenView extends GetView<HomescreenController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  // Function to open the drawer
  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomescreenController());
    return Scaffold(
      backgroundColor: context.brandColor1,
      key: _scaffoldKey,
      drawer: QuahaMenu(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomMenuRowWidget(
                onTap: _openDrawer,
              ).paddingOnly(top: 10.kh, bottom: 25.kh),
              CustomCoinRowWidget().paddingOnly(bottom: 25.kh),
              SizeTransition(
                sizeFactor: Tween<double>(
                  begin: 0.0,
                  end: 1,
                ).animate(controller.animationController),
                child: GestureDetector(
                  onTap: () {
                    Get.to(
                      const SearchscreenView(),
                      curve: Curves.easeOut,
                      duration: const Duration(milliseconds: 300),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.containerBG,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageConstant.svgSearch)
                            .paddingOnly(right: 8.kw),
                        Text(
                          'Search Bar',
                          style: TextStyleUtil.roboto400(fontSize: 12.kh),
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 15.kw, vertical: 12.kh),
                  ),
                ),
              ),
              const ContainerCard(
                label: 'The Future of Design: Introduction to Illustration',
                text: 'Quaha Arts Center',
              ).paddingOnly(top: 24.kh, bottom: 24.kh),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyleUtil.roboto600(fontSize: 24.kh),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(Categories(), curve: Curves.easeOut);
                    },
                    child: Text('See All',
                        style: TextStyleUtil.roboto500(fontSize: 12.kh)),
                  ),
                ],
              ).paddingOnly(bottom: 24.kh),
              SizeTransition(
                sizeFactor: Tween<double>(
                  begin: 0.0,
                  end: 1,
                ).animate(controller.animationController),
                child: QuahaCategoryListView(
                        imagePath: controller.categoriesBG,
                        text: controller.categoriesName,
                        height: 90.kh)
                    .paddingOnly(bottom: 21.kh),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Courses',
                    style: TextStyleUtil.roboto600(fontSize: 24.kh),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(PopularcoursesView());
                    },
                    child: Text('See All',
                        style: TextStyleUtil.roboto500(fontSize: 12.kh)),
                  ),
                ],
              ).paddingOnly(bottom: 24.kh),
              QuahaPopularCoursesListView(
                courseName: controller.courseName,
                authorName: controller.authorName,
                svgPath: controller.categoriesBG,
                onTap: () {
                  Map<String, dynamic> courseData = controller.getCourseData();
                  Get.toNamed(
                    Routes.COURSEENTRYSCREEN,
                    arguments: courseData,
                  );
                },
              )
            ],
          ).paddingSymmetric(horizontal: 16.kw, vertical: 16.kh),
        ),
      ),
    );
  }
}
