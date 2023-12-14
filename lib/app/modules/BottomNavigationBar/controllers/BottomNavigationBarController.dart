import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class BottomTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var selectedPageIndex = 0.obs;

  void changePage(int index) {
    selectedPageIndex.value = index;
  }

  late final AnimationController _controller;
  late final Animation<Offset> offsetAnimation;
  RxBool showOverlay = true.obs;
  RxBool isZebraVisible = true.obs;

  @override
  void onInit() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();

    super.onInit();
  }

  void hideOverlayAndZebra() {
    showOverlay.value = false;
    isZebraVisible.value = false;
  }

  void toggleZebraAndOverlay() {
    if (isZebraVisible.value) {
      hideOverlayAndZebra();
    }
  }

  @override
  void onClose() {
    _controller.dispose();
    super.onClose();
  }
}
