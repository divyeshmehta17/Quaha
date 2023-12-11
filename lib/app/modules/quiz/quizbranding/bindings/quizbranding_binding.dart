import 'package:get/get.dart';

import '../controllers/quizbranding_controller.dart';

class QuizbrandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizbrandingController>(
      () => QuizbrandingController(),
    );
  }
}
