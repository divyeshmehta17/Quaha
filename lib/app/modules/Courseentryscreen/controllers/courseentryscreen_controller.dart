import 'package:get/get.dart';

class CourseentryscreenController extends GetxController {
  //TODO: Implement CourseentryscreenController
  RxList<double> durationCompleted = [0.0, 0.4, 0.6, 1.0].obs;
  RxList<bool> duedate = [false, true, false, true].obs;
  //RxDouble completedPercentage = 0.0.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  //void courseCompletedPercentage() {}
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
