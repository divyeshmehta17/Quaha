import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../controllers/splash4_controller.dart';

class Splash4View extends GetView<Splash4Controller> {
  const Splash4View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.brandColor1,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/handy-deadline.png'),
            110.kheightBox,
            Text(
              'VIRTUAL INSIGHT',
              style: TextStyleUtil.roboto600(fontSize: 24.kh),
            ),
            16.kheightBox,
            Text(
              'Earn on-the-Job Skills, tools\nand work experience.',
              style: TextStyleUtil.montserrat400(fontSize: 17.kh),
            ),
            77.kheightBox,
          ],
        ));
  }
}
