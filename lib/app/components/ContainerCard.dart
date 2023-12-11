import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../constants/image_constant.dart';
import '../services/text_style_util.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(colors: [
            Color(0xFFF27171),
            Color(0xFFDC0000),
          ])),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The Future of Design:\nIntroduction to\nIllustrations',
                style: TextStyleUtil.rubik500(fontSize: 17.kh),
                textAlign: TextAlign.start,
              ).paddingOnly(bottom: 16.kh, right: 6.kw),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SvgPicture.asset(ImageConstant.svgpencil),
                  Text(
                    'Quaha Arts Centre',
                    style: TextStyleUtil.rubik700(fontSize: 16.kh),
                    textAlign: TextAlign.center,
                  ),
                ],
              ).paddingOnly(
                bottom: 20.kh,
              ),
            ],
          ).paddingOnly(left: 9.kw, top: 20.kh, right: 20.kw),
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                Image.asset(ImageConstant.pngbookbg).paddingOnly(
                  top: 33.kh,
                ),
                SvgPicture.asset(
                  ImageConstant.svgbook,
                  height: 91.kh,
                ).paddingOnly(
                  top: 34.kh,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
