import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../components/quaha_app_bar.dart';
import '../controllers/rewardsandbadges_controller.dart';

class RewardsandbadgesView extends GetView<RewardsandbadgesController> {
  const RewardsandbadgesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QuahaAppBar(
        title: Text('Achievment'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Image.asset(
              ImageConstant.pngavatar,
            ),
            backgroundColor: Colors.white,
            radius: 64,
          ),
          Center(
            child: Text(
              'Carina Claassens',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: context.containerBG,
                    borderRadius: BorderRadius.circular(8.kw)),
                child: Row(
                  children: [
                    CommonImageView(
                      svgPath: ImageConstant.svgranking1,
                    ).paddingOnly(right: 16.kw),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rank',
                          style: TextStyleUtil.roboto700(fontSize: 14.kh),
                        ),
                        Text(
                          '#56/650',
                          style: TextStyleUtil.roboto400(fontSize: 14.kh),
                        )
                      ],
                    ).paddingOnly(right: 53.kw),
                    CommonImageView(
                      imagePath: ImageConstant.pngquoins,
                    ).paddingOnly(right: 16.kw),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quoins',
                          style: TextStyleUtil.rubik700(fontSize: 14.kh),
                        ),
                        Text(
                          '4590',
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        )
                      ],
                    )
                  ],
                ).paddingOnly(
                    left: 24.kw, right: 24.kw, top: 8.kh, bottom: 8.kh),
              )
            ],
          )
        ],
      ).paddingOnly(right: 25.kw, left: 25.kw),
    );
  }
}
