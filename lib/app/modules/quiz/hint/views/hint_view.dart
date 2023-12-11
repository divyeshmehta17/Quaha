import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../controllers/hint_controller.dart';

class HintView extends GetView<HintController> {
  const HintView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonImageView(
              imagePath: ImageConstant.pnghintZebra,
            ),
            Container(
              height: 185.kh,
              decoration: BoxDecoration(
                  color: context.containerBG,
                  borderRadius: BorderRadius.circular(18)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CommonImageView(
                        imagePath: ImageConstant.pngquoins,
                        height: 24.kh,
                      ),
                      Text(
                        '-10',
                        style: TextStyleUtil.rubik500(fontSize: 20.kh),
                      )
                    ],
                  ).paddingOnly(right: 16.kw, top: 12.kh),
                  Text(
                    'I belive its either Podcast set up or\nFinding a Podcast Platform',
                    style: TextStyleUtil.rubik500(fontSize: 14.kh),
                  ).paddingOnly(left: 24.kw, right: 85.kw, top: 20.kh),
                ],
              ),
            )
          ],
        ).paddingOnly(left: 16.kw, right: 16.kw),
      ),
    ));
  }
}
