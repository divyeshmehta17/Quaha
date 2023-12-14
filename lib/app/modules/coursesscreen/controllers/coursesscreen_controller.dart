import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';

class CoursesscreenController extends GetxController {
  //TODO: Implement CoursesscreenController
  RxList<String> categoriesBG = [
    ImageConstant.pngdesign,
    ImageConstant.pngdevelopment,
    ImageConstant.pngmarketing,
    ImageConstant.pnguiux
  ].obs;
  RxList<String> categoriesName =
      ['Design', 'Developmet', 'Marketing', 'Ui/Ux'].obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
