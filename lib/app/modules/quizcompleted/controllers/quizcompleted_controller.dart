import 'package:get/get.dart';

class QuizcompletedController extends GetxController {
  //TODO: Implement QuizcompletedController

  final count = 0.obs;
  RxBool isZebraVisible = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    isZebraVisible.value = false;
    super.onClose();
  }

  void increment() => count.value++;
}
