import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/splash2/controllers/splash2_controller.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

class Splash2View extends GetView<Splash2Controller> {
  const Splash2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.brandColor1,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImageConstant.svghandyfriendsspeechbubbles,
            ),
            70.kheightBox,
            Text(
              'COMMUNITY',
              style: TextStyleUtil.roboto600(fontSize: 24.kh),
            ),
            34.kheightBox,
            Text(
              ' Join the Quaha Community\nthat supports you through\nyour journey',
              textAlign: TextAlign.center,
              style: TextStyleUtil.montserrat400(fontSize: 17.kh),
            ),
            160.kheightBox,
          ],
        ));
  }
}
