import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/modules/Login/views/login_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../services/custombuttons.dart';
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
              'MARKETPLACE',
              style: TextStyleUtil.roboto600(fontSize: 24.kh),
            ),
            16.kheightBox,
            Text(
              'Redeem rewards & unlock \nexciting opportunities',
              style: TextStyleUtil.montserrat400(fontSize: 17.kh),
            ),
            77.kheightBox,
            NextButton(
              onTap: () {
                Get.offAll(LoginView());
              },
              color: Colors.blue,
              iconColor: Colors.white,
            )
          ],
        ));
  }
}
