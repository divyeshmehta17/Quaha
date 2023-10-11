import 'package:get/get.dart';

import '../controllers/details1_controller.dart';

class Details1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Details1Controller>(
      () => Details1Controller(),
    );
  }
}
