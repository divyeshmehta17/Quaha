import 'package:get/get.dart';

import '../controllers/unlockmodule_controller.dart';

class UnlockmoduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnlockmoduleController>(
      () => UnlockmoduleController(),
    );
  }
}
