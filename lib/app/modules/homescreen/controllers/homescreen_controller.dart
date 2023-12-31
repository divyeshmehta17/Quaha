import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../constants/image_constant.dart';

class HomescreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final TextEditingController searchController = TextEditingController();
  late AnimationController animationController;
  RxList<String> courseName =
      ['Graphic Designer ', 'Marketing Course ', 'Marketing Course'].obs;
  RxList<String> authorName =
      ['Peter Benace', ' Peter Benace', ' Peter Benace'].obs;
  RxList<String> categoriesBG = [
    ImageConstant.pngdesign,
    ImageConstant.pngdevelopment,
    ImageConstant.pngmarketing,
    ImageConstant.pnguiux
  ].obs;
  RxList<String> categoriesName =
      ['Design', 'Developmet', 'Marketing', 'Ui/Ux'].obs;
  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300), // Adjust the duration as needed
    );

    // Create the animation with a curve
  }

  Map<String, dynamic> getCourseData() {
    return {
      'courseName': courseName,
      'authorName': authorName,
    };
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  // Function to trigger the search bar animation
  void triggerSearchBarAnimation() {
    {
      animationController.forward();
    }
  }
}
