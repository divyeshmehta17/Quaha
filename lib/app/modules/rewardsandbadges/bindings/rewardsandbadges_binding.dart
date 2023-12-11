import 'package:get/get.dart';

import '../controllers/rewardsandbadges_controller.dart';

class RewardsandbadgesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RewardsandbadgesController>(
      () => RewardsandbadgesController(),
    );
  }
}
