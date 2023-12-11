import 'package:get/get.dart';

import '../controllers/discoverallcontent_controller.dart';

class DiscoverallcontentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiscoverallcontentController>(
      () => DiscoverallcontentController(),
    );
  }
}
