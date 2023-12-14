import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/components/quaha_app_bar.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../controllers/instructorinformation_controller.dart';

class InstructorinformationView
    extends GetView<InstructorinformationController> {
  const InstructorinformationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(InstructorinformationController());
    return Scaffold(
        appBar: QuahaAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CommonImageView(
                imagePath: ImageConstant.pngQuahaLogo,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.kw),
                    color: context.containerBG),
                child: Text(
                  'We\'re excited to offer you the opportunity to explore a range of careers and gain insights into what they entail.\nOur platform provides a wealth of knowledge that you can apply today to upskill and get ahead.\n\nBy understanding these insights, you\'ll be equipped with the tools and knowledge to make informed decisions about your future career path. So why wait? Join us today and unlock your potential!',
                  style: TextStyleUtil.rubik400(fontSize: 16.kh),
                  textAlign: TextAlign.center,
                ).paddingAll(16.kw),
              )
            ],
          ).paddingOnly(left: 20.kw, right: 20.kw),
        ));
  }
}
