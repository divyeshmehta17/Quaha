import 'package:get/get.dart';

import '../controllers/BottomNavigationBarController.dart';

class BottomNavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomTabController>(
      () => BottomTabController(),
    );
  }
}
