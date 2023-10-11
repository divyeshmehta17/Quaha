import 'package:get/get.dart';

import '../controllers/quizscreen_controller.dart';

class QuizscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizscreenController>(
      () => QuizscreenController(),
    );
  }
}
