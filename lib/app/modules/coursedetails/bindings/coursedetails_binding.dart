import 'package:get/get.dart';

import '../controllers/coursedetails_controller.dart';

class CoursedetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoursedetailsController>(
      () => CoursedetailsController(),
    );
  }
}
