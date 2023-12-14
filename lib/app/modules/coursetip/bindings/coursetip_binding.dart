import 'package:get/get.dart';

import '../controllers/coursetip_controller.dart';

class CoursetipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoursetipController>(
      () => CoursetipController(),
    );
  }
}
