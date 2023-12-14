import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
        body: SafeArea(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      ImageConstant.pngSplashBG,
                    ))),
          ),
          Image.asset(ImageConstant.pngQuahaLogo),
        ],
      ),
    ));
  }
}
