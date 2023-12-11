import 'package:get/get.dart';

import '../controllers/searchtechnology_controller.dart';

class SearchtechnologyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchtechnologyController>(
      () => SearchtechnologyController(),
    );
  }
}
