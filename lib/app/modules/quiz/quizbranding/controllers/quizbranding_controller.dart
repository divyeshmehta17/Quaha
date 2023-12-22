import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';

class QuizbrandingController extends GetxController {
  RxInt currentPageIndex = 0.obs;
  final PageController pageController = PageController();
  late List<List<bool>> pageCorrectAnswers;
  List<Map<String, dynamic>> quizData = [
    {
      'question':
          'Which African brand is known for its luxury skincare products?',
      'options': ['Africology', 'Black Opal', 'Nubian Heritage'],
      'answers': [
        'Africology',
        'Nubian Heritage',
        'Black Opal',
      ],
    },
    {
      'question':
          'Which of is an example of a successful Mobile Network African brand?',
      'options': ['Vodafone', 'MTN', 'Verizon'],
      'answers': ['MTN', 'Vodafone', 'Verizon'],
    },
  ];

  RxInt pageIndex = 0.obs;

  RxList<String> pngquizimage = [
    ImageConstant.pngdummyquizimage,
    ImageConstant.pngdummyquizimage2,
    ImageConstant.pngdummyquizimage
  ].obs;
  RxList<bool> isCorrectAns = [
    false,
    false,
    false,
  ].obs;

  final count = 0.obs;
  void nextPage() {
    currentPageIndex++;
  }

  @override
  void onInit() {
    super.onInit();
    pageCorrectAnswers = List.generate(
      quizData.length,
      (index) => List.filled(3, false),
      growable: false,
    );
  }

  void updateCorrectAnswer(int pageIndex, int optionIndex) {
    for (int i = 0; i < 3; i++) {
      pageCorrectAnswers[pageIndex][i] = false;
    }
    pageCorrectAnswers[pageIndex][optionIndex] = true;
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
