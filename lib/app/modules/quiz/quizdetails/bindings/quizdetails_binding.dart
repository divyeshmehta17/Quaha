import 'package:get/get.dart';

import '../controllers/quizdetails_controller.dart';

class QuizdetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizdetailsController>(
      () => QuizdetailsController(),
    );
  }
}
