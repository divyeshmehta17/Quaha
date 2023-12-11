import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/QuahaPopularCourses.dart';
import 'package:quaha/app/components/quaha_app_bar.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../../constants/image_constant.dart';
import '../../quizintro/views/quizintro_view.dart';
import '../controllers/excitingquizesseeall_controller.dart';

List<String> catogries = [
  'Achieving Success',
  'Achieving Success',
  'Achieving Success',
  'Achieving Success'
];

class ExcitingquizesseeallView extends GetView<ExcitingquizesseeallController> {
  const ExcitingquizesseeallView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.brandColor1,
      appBar: QuahaAppBar(
        title: Text('Exciting Quizes'),
        textStyle: TextStyleUtil.rubik500(fontSize: 20.kh),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              QuahaExcitingQuizesSeeAllGridView(
                  excitingQuizesIntro: [
                    introView(
                        onpressed: () {},
                        label: 'Tips',
                        description:
                            'Join the ultimate quiz platform and challenge your friends and family to a battle of wits!\nWith exciting competitions and rewards up for grabs, you\'ll have a blast while learning new things and outsmarting everyone.\n\nPut your knowledge to the test and earn bragging rights as the ultimate quiz champion. Sign up now and let the games begin!')
                  ],
                  categories: [
                    'Achieving Success',
                    'Achieving Success',
                    'Achieving Success',
                    'Achieving Success'
                  ],
                  crossAxisCount: 2,
                  imagePaths: ImageConstant.pngexcitingquizbg,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  itemCount: 4),
            ],
          ).paddingOnly(left: 16.kw, right: 16.kw, top: 30.kh),
        ),
      ),
    );
  }
}
