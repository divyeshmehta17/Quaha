import 'package:get/get.dart';

import '../controllers/course_page1_controller.dart';

class CoursePage1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoursePage1Controller>(
      () => CoursePage1Controller(),
    );
  }
}
