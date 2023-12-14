import 'package:get/get.dart';

import '../controllers/coursepage2_controller.dart';

class Coursepage2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Coursepage2Controller>(
      () => Coursepage2Controller(),
    );
  }
}
