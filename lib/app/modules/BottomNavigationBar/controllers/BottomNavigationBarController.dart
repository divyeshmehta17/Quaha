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

    offsetAnimation = Tween<Offset>(
      begin: const Offset(10.5, 0.0),
      end: const Offset(2.0, 1.5),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInBack,
    ));

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
