import 'package:get/get.dart';

class Splash1Controller extends GetxController {
  //TODO: Implement Splash1Controller
  RxDouble currentPage = 0.0.obs;
  final count = 0.obs;
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
    super.onClose();
  }

  void increment() => count.value++;
}
