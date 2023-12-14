import 'package:get/get.dart';
import 'package:quaha/app/modules/splash1/views/splash1_view.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  RxDouble currentPage = 0.0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => Splash1View());
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
