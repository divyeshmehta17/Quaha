import 'package:get/get.dart';

import '../controllers/hint_controller.dart';

class HintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HintController>(
      () => HintController(),
    );
  }
}
