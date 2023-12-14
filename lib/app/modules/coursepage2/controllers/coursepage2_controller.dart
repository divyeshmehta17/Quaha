import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../constants/image_constant.dart';

class Coursepage2Controller extends GetxController {
  //TODO: Implement Coursepage2Controller
  final PageController pageController = PageController();
  RxInt count = 0.obs;
  RxInt updatedIndex = 1.obs;

  RxList<bool> isCorrectAns = [false, false, false, false].obs;
  RxBool isQuiz = false.obs;
  RxList<String> courseContent = [
    'Starting a podcast may seem easy at first — and with all the tech, software and platforms at our disposal, it would seem that anyone can do it.',
    'And while it is indeed easy, there\'s always the question:How do you ensure that your startup is successful? The answer is right here:',
    'However, as many have come to realise , podcasting is a trend that is here to stay as it continues to gain more traction every year.',
    'This could be determined by brainstorming on a topic people might be interested in. If you have specific skills or knowledge base, it would be a good starting point for your podcast.'
  ].obs;
  RxList<String> courseContentImage = [
    ImageConstant.pngpodcast,
    ImageConstant.pngpodcast,
    ImageConstant.pngpodcast,
    ImageConstant.pngquiggicoursepageimgae,
  ].obs;
  RxList<String> quizOptions = [
    'Target Audience',
    'Content Plan',
    'Know what To expect',
    'Podcasting Setup',
  ].obs;

  RxList<String> answer = [
    'Target Audience',
    'Podcasting Setup',
    'Content Plan',
    'Know what To expect'
  ].obs;
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

  updatePageIndex(int index) {
    if (index > count.value - 1) {
      updatedIndex.value = index + 1;
    }
    // Check if it's the previous page
    else if (index < count.value - 1) {
      updatedIndex.value = index - 1;
    }
  }
}
