import 'package:get/get.dart';
import 'package:quaha/app/modules/popularcourses/views/popularcourses_view.dart';

class SearchtechnologyController extends GetxController {
  //TODO: Implement SearchtechnologyController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  void navigateToPage(String selectedButton) {
    if (selectedButton == 'Technology') {
      // Navigate to the Technology page
      Get.to(PopularcoursesView());
    } else if (selectedButton == 'Leadership') {
      // Navigate to the Leadership page
    } else if (selectedButton == 'Software') {
      // Navigate to the Software page
    } else if (selectedButton == 'Administration') {
      // Navigate to the Administration page
    }
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
