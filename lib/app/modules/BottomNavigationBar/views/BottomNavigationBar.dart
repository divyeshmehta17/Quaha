import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/coursesscreen/views/coursesscreen_view.dart';
import 'package:quaha/app/modules/homescreen/views/homescreen_view.dart';
import 'package:quaha/app/modules/quizscreen/views/quizscreen_view.dart';
import 'package:quaha/app/services/colors.dart';

import '../../viscreen/views/viscreen_view.dart';
import '../controllers/BottomNavigationBarController.dart';

class QuahaBottomBar extends StatelessWidget {
  final controller = Get.put(BottomTabController());

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
      body: Obx(() => pages[controller.selectedPageIndex.value]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.selectedPageIndex.value,
        onTap: (index) => controller.changePage(index),
        backgroundColor: context.brandColor1,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstant.svgHome),
            label: 'Home',
            backgroundColor: context.brandColor1,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstant.svgQuiz),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstant.svgCourses),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstant.svgVI),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
