import 'package:get/get.dart';

import '../controllers/courseviewcontent_controller.dart';

class CourseviewcontentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CourseviewcontentController>(
      () => CourseviewcontentController(),
    );
  }
}
