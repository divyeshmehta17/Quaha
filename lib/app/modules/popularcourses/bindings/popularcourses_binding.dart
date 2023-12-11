import 'package:get/get.dart';

import '../controllers/popularcourses_controller.dart';

class PopularcoursesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PopularcoursesController>(
      () => PopularcoursesController(),
    );
  }
}
