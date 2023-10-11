import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../services/custombuttons.dart';
import '../../splash4/views/splash4_view.dart';
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
            Image.asset(ImageConstant.pngGirlDrinkingCoffee),
            10.kheightBox,
            Text(
              'COMMUNITY',
              style: TextStyleUtil.roboto600(fontSize: 24.kh),
            ),
            58.kheightBox,
            Text(
              'Shape the future of learning \ntogether!',
              textAlign: TextAlign.center,
              style: TextStyleUtil.montserrat400(fontSize: 20.kh),
            ),
            70.kheightBox,
            Text(
              'Are you Ready to commit?',
              style: TextStyleUtil.montserrat400(fontSize: 25.kh),
            ),
            40.kheightBox,
            NextButton(
              onTap: () {
                Get.to(
                  const Splash4View(),
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
