import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/splash2/views/splash2_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../services/custombuttons.dart';
import '../controllers/splash1_controller.dart';

class Splash1View extends GetView<Splash1Controller> {
  const Splash1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.brandColor1,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstant.pngBrainstorming,
            ),
            35.kheightBox,
            Text(
              'VIRTUAL INSIGHT',
              style: TextStyleUtil.roboto600(fontSize: 24.kh),
            ),
            37.kheightBox,
            Text(
              'Unlock valuable insights to \nexcel your career and start-up.',
              textAlign: TextAlign.center,
              style: TextStyleUtil.montserrat400(fontSize: 17.kh),
            ),
            13.kheightBox,
            Text(
              'Are you ready?',
              style: TextStyleUtil.montserrat400(fontSize: 25.kh),
            ),
            62.kheightBox,
            NextButton(
              onTap: () {
                Get.to(const Splash2View());
              },
              color: Colors.blue,
              iconColor: Colors.white,
            )
          ],
        ));
  }
}
