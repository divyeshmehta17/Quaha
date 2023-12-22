import 'package:get/get.dart';

import '../controllers/quizcompleted_controller.dart';

class QuizcompletedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizcompletedController>(
      () => QuizcompletedController(),
    );
  }
}
