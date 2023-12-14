import 'package:get/get.dart';

import '../controllers/course1_controller.dart';

class Course1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Course1Controller>(
      () => Course1Controller(),
    );
  }
}
