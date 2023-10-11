import 'package:get/get.dart';

import '../controllers/coursesscreen_controller.dart';

class CoursesscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoursesscreenController>(
      () => CoursesscreenController(),
    );
  }
}
