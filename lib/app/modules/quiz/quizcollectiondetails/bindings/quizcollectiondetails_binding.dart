import 'package:get/get.dart';

import '../controllers/quizcollectiondetails_controller.dart';

class QuizcollectiondetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizcollectiondetailsController>(
      () => QuizcollectiondetailsController(),
    );
  }
}
