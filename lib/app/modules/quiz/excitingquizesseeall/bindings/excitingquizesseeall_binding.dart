import 'package:get/get.dart';

import '../controllers/excitingquizesseeall_controller.dart';

class ExcitingquizesseeallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExcitingquizesseeallController>(
      () => ExcitingquizesseeallController(),
    );
  }
}
