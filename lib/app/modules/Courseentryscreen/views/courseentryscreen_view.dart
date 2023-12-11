import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/modules/quiz/quizintro/views/quizintro_view.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../controllers/courseentryscreen_controller.dart';

class CourseentryscreenView extends GetView<CourseentryscreenController> {
  const CourseentryscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> courseData = Get.arguments;
    RxList<String> courseName = courseData['courseName'];
    RxList<String> authorName = courseData['authorName'];
    return Scaffold(
      body: Center(
        child: introView(
          onpressed: () {
            Get.toNamed(Routes.COURSEDETAILS, arguments: courseData);
          },
          label: 'Courses',
          labelStyle: TextStyleUtil.rubik500(fontSize: 20.kh),
          description:
              'We\'re excited to offer you the opportunity to explore a range of careers and gain insights into what they entail.\nOur platform provides a wealth of knowledge that you can apply today to upskill and get ahead.\n\nBy understanding these insights, you\'ll be equipped with the tools and knowledge to make informed decisions about your future career path. So why wait? Join us today and unlock your potential!',
          descriptionStyle: TextStyleUtil.montserrat400(fontSize: 14.kh),
        ),
      ),
    );
  }
}
/*
,


 */
