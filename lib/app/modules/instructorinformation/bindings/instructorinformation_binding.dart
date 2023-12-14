import 'package:get/get.dart';

import '../controllers/instructorinformation_controller.dart';

class InstructorinformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InstructorinformationController>(
      () => InstructorinformationController(),
    );
  }
}
