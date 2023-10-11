import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/quizscreen_controller.dart';

class QuizscreenView extends GetView<QuizscreenController> {
  const QuizscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'QuizscreenView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
