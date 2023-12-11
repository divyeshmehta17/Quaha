import 'package:get/get.dart';

import '../controllers/splash5_controller.dart';

class Splash5Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Splash5Controller>(
      () => Splash5Controller(),
    );
  }
}
