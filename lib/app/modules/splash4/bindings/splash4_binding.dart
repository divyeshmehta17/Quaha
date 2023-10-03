import 'package:get/get.dart';

import '../controllers/splash4_controller.dart';

class Splash4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Splash4Controller>(
      () => Splash4Controller(),
    );
  }
}
