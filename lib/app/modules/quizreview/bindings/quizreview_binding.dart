import 'package:get/get.dart';

import '../controllers/quizreview_controller.dart';

class QuizreviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizreviewController>(
      () => QuizreviewController(),
    );
  }
}
