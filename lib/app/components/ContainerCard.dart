import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../constants/image_constant.dart';
import '../services/text_style_util.dart';

class ContainerCard extends StatelessWidget {
  final String label;
  final String text;
  final TextStyle? textStyle;
  const ContainerCard({
    super.key,
    required this.label,
    required this.text,
    this.textStyle,
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: textStyle ?? TextStyleUtil.rubik500(fontSize: 17.kh),
                  textAlign: TextAlign.start,
                ).paddingOnly(bottom: 16.kh, right: 6.kw),
                Row(
                  children: [
                    SvgPicture.asset(
                      ImageConstant.svgpencil,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            text,
                            style: textStyle ??
                                TextStyleUtil.rubik700(fontSize: 16.kh),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ).paddingOnly(
                  bottom: 20.kh,
                ),
              ],
            ).paddingOnly(left: 17.kw, top: 28.kh),
          ),
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Image.asset(ImageConstant.pngbookbg).paddingOnly(
                  top: 33.kh,
                ),
                SvgPicture.asset(
                  ImageConstant.svgbook,
                  height: 91.kh,
                ),
              ],
            ).paddingOnly(top: 58.kh),
          ),
        ],
      ),
    );
  }
}
