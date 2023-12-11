import 'package:get/get.dart';

import '../controllers/courseentryscreen_controller.dart';

class CourseentryscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CourseentryscreenController>(
      () => CourseentryscreenController(),
    );
  }
}
