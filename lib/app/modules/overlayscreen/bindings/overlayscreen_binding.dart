import 'package:get/get.dart';

import '../controllers/overlayscreen_controller.dart';

class OverlayscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OverlayscreenController>(
      () => OverlayscreenController(),
    );
  }
}
