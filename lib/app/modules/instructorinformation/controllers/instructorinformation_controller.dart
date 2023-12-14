import 'package:get/get.dart';
import 'package:quaha/app/modules/course1/views/course1_view.dart';

class InstructorinformationController extends GetxController {
  //TODO: Implement InstructorinformationController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => Course1View());
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
