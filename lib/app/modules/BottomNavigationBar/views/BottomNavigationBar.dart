import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/coursesscreen/views/coursesscreen_view.dart';
import 'package:quaha/app/modules/homescreen/controllers/homescreen_controller.dart';
import 'package:quaha/app/modules/homescreen/views/homescreen_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../quiz/quizscreen/views/quizscreen_view.dart';
import '../controllers/BottomNavigationBarController.dart';

class QuahaBottomBar extends StatelessWidget {
  final controller = Get.put(BottomTabController());
  final HomescreenController bgcontroller = Get.put(HomescreenController());
  final List<Widget> pages = [
    HomescreenView(),
    QuizscreenView(),
    CoursesscreenView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.brandColor1,
      body: GestureDetector(
        onTap: () {
          controller.toggleZebraAndOverlay();
          bgcontroller.triggerSearchBarAnimation();
        },
        child: Stack(
          alignment: AlignmentDirectional.centerEnd,
          //fit: StackFit.expand,
          children: [
            Obx(() => pages[controller.selectedPageIndex.value]),
            Obx(() {
              return Visibility(
                visible: controller.showOverlay.value,
                child: Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              );
            }),
            Obx(() {
              return Visibility(
                visible: controller.isZebraVisible.value,
                child: SvgPicture.asset(
                  ImageConstant.svgZebraHello,
                ),
              );
            }),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () {
          return Visibility(
            visible: !controller.showOverlay.value,
            child: BottomNavigationBar(
              currentIndex: controller.selectedPageIndex.value,
              //fixedColor: context.yellow,
              onTap: (index) => controller.changePage(index),
              backgroundColor: context.brandColor1,
              selectedLabelStyle: TextStyleUtil.rubik500(fontSize: 10.kh),
              unselectedLabelStyle:
                  TextStyleUtil.rubik500(fontSize: 10.kh, color: Colors.white),
              items: [
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SvgPicture.asset(ImageConstant.svgHome)
                          .paddingOnly(bottom: 5.kh),
                      Text(
                        'Home',
                        style: TextStyleUtil.rubik500(
                            fontSize: 10.kh, color: Colors.white),
                      ),
                    ],
                  ),
                  activeIcon: Column(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.svgHome,
                        color: context.yellow,
                      ).paddingOnly(bottom: 5.kh),
                      Text(
                        'Home',
                        style: TextStyleUtil.rubik500(
                            fontSize: 10.kh, color: context.yellow),
                      ),
                    ],
                  ),
                  label: '',
                  backgroundColor: context.brandColor1,
                ),
                BottomNavigationBarItem(
                  backgroundColor: context.brandColor1,
                  icon: Column(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.svgQuiz,
                      ).paddingOnly(bottom: 5.kh),
                      Text(
                        'Quiz',
                        style: TextStyleUtil.rubik500(
                            fontSize: 10.kh, color: Colors.white),
                      ),
                    ],
                  ),
                  activeIcon: Column(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.svgQuiz,
                        color: context.yellow,
                      ).paddingOnly(bottom: 5.kh),
                      Text(
                        'Quiz',
                        style: TextStyleUtil.rubik500(
                            fontSize: 10.kh, color: context.yellow),
                      ),
                    ],
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.svgCourses,
                      ).paddingOnly(bottom: 5.kh),
                      Text(
                        'Courses',
                        style: TextStyleUtil.rubik500(
                            fontSize: 10.kh, color: Colors.white),
                      ),
                    ],
                  ),
                  activeIcon: Column(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.svgCourses,
                        color: context.yellow,
                      ).paddingOnly(bottom: 5.kh),
                      Text(
                        'Courses',
                        style: TextStyleUtil.rubik500(
                            fontSize: 10.kh, color: context.yellow),
                      ),
                    ],
                  ),
                  label: '',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
