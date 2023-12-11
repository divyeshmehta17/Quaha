import 'package:get/get.dart';

import '../controllers/quizintro_controller.dart';

class QuizintroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizintroController>(
      () => QuizintroController(),
    );
  }
}
