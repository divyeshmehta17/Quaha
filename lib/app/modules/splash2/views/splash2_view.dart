import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/splash2/controllers/splash2_controller.dart';
import 'package:quaha/app/modules/splash3/views/splash3_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../services/custombuttons.dart';

class Splash2View extends GetView<Splash2Controller> {
  const Splash2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.brandColor1,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstant.pngPabloBooks,
            ),
            70.kheightBox,
            Text(
              'QUIZ',
              style: TextStyleUtil.roboto600(fontSize: 24.kh),
            ),
            34.kheightBox,
            Text(
              'Unleash your intellect and have a blast\nwhile getting smarter!',
              textAlign: TextAlign.center,
              style: TextStyleUtil.montserrat400(fontSize: 17.kh),
            ),
            160.kheightBox,
            NextButton(
              onTap: () {
                Get.to(
                  const Splash3View(),
                  transition: Transition.rightToLeft,
                );
              },
              color: Colors.white,
              iconColor: Colors.blue,
            )
          ],
        ));
  }
}
