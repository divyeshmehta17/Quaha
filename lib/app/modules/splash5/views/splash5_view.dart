import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../../../services/text_style_util.dart';
import '../controllers/splash5_controller.dart';

class Splash5View extends GetView<Splash5Controller> {
  const Splash5View({Key? key}) : super(key: key);
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
              'MARKETPLACE',
              style: TextStyleUtil.roboto600(fontSize: 24.kh),
            ),
            16.kheightBox,
            Text(
              ' Use your Quoins or Qrowns to spend\non cool Prizes, products or you can\ndonate to the charity of your choice.',
              style: TextStyleUtil.montserrat400(fontSize: 17.kh),
            ),
            77.kheightBox,
          ],
        ));
  }
}
