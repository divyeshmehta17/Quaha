import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import 'constants/image_constant.dart';

class QuahaNewCoursesListView extends StatelessWidget {
  String text;

  QuahaNewCoursesListView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 191.kh,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return Container(
              width: 170.kh,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: context.containerBG),
              child: Column(
                children: [
                  SvgPicture.asset(ImageConstant.svgmarektingdummyimage)
                      .paddingOnly(top: 7.kh, bottom: 5.kh),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        text,
                        style: TextStyleUtil.rubik500(
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rate_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            '4.5',
                            style: TextStyleUtil.rubik500(
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ],
                  ).paddingOnly(left: 6.kw),
                ],
              ),
            ).paddingOnly(right: 16.kw);
          }),
    );
  }
}
