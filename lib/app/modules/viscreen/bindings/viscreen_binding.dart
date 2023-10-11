import 'package:get/get.dart';

import '../controllers/viscreen_controller.dart';

class ViscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViscreenController>(
      () => ViscreenController(),
    );
  }
}
