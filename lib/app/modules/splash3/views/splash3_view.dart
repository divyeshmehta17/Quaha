import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../controllers/splash3_controller.dart';

class Splash3View extends GetView<Splash3Controller> {
  const Splash3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.brandColor1,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImageConstant.svghandyfriendsspeechbubblessolving,
            ),
            10.kheightBox,
            Text(
              'QUIZ',
              style: TextStyleUtil.roboto600(fontSize: 24.kh),
            ),
            58.kheightBox,
            Text(
              'Have fun daily, playing and\nlearning. Compete, earn\nrewards and win.',
              textAlign: TextAlign.center,
              style: TextStyleUtil.montserrat400(fontSize: 20.kh),
            ),
            70.kheightBox,
            40.kheightBox,
          ],
        ));
  }
}
