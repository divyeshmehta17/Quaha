import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/coursesscreen/views/coursesscreen_view.dart';
import 'package:quaha/app/modules/homescreen/controllers/homescreen_controller.dart';
import 'package:quaha/app/modules/homescreen/views/homescreen_view.dart';
import 'package:quaha/app/services/colors.dart';

import '../../quiz/quizscreen/views/quizscreen_view.dart';
import '../../viscreen/views/viscreen_view.dart';
import '../controllers/BottomNavigationBarController.dart';

class QuahaBottomBar extends StatelessWidget {
  final controller = Get.put(BottomTabController());
  final HomescreenController bgcontroller = Get.put(HomescreenController());
  final List<Widget> pages = [
    HomescreenView(),
    QuizscreenView(),
    CoursesscreenView(),
    ViscreenView(),
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
                child: SlideTransition(
                  position: controller.offsetAnimation,
                  child: SvgPicture.asset(ImageConstant.svgZebraHello),
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
              onTap: (index) => controller.changePage(index),
              backgroundColor: context.brandColor1,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(ImageConstant.svgHome),
                  activeIcon: SvgPicture.asset(
                    ImageConstant.svgHome,
                    color: Colors.red,
                  ),
                  label: 'Home',
                  backgroundColor: context.brandColor1,
                ),
                BottomNavigationBarItem(
                  backgroundColor: context.brandColor1,
                  icon: SvgPicture.asset(ImageConstant.svgQuiz),
                  activeIcon: SvgPicture.asset(
                    ImageConstant.svgQuiz,
                    color: Colors.red,
                  ),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    ImageConstant.svgCourses,
                  ),
                  activeIcon: SvgPicture.asset(
                    ImageConstant.svgCourses,
                    color: Colors.red,
                  ),
                  label: 'Settings',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(ImageConstant.svgVI),
                  activeIcon: SvgPicture.asset(
                    ImageConstant.svgVI,
                    color: Colors.red,
                  ),
                  label: 'Settings',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
