import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/modules/BottomNavigationBar/views/BottomNavigationBar.dart';

class Details1Controller extends GetxController {
  //TODO: Implement Details1Controller
  PageController pageController = PageController();
  RxList<bool> isSelected = <bool>[false, false, false].obs;
  var selectedCountry = 'Option 1'.obs;
  void toggleSelection(int index) {
    isSelected[index] = !isSelected[index];
  }

  void goToPage(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void goToNextPage() {
    final nextPage = pageController.page!.toInt() + 1;
    if (nextPage < 4) {
      goToPage(nextPage);
    } else if (nextPage == 4) {
      Get.to(QuahaBottomBar());
    }
  }
}
