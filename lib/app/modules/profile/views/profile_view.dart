import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/editprofile/views/editprofile_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.brandColor1,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Profile',
                      style: TextStyleUtil.roboto600(fontSize: 20),
                    ).paddingOnly(right: 118.kw),
                    GestureDetector(
                        child: SvgPicture.asset(ImageConstant.svglogout))
                  ],
                ),
              ),
              Center(
                child: CircleAvatar(
                  radius: 64.kw,
                  backgroundColor: Colors.white,
                ),
              ).paddingOnly(top: 20.kh),
              Center(
                  child: Text(
                'Profile Name',
                style: TextStyleUtil.rubik500(fontSize: 20),
              ).paddingOnly(top: 16.kh)),
              Center(
                  child: Text(
                'xyz@gmail.com',
                style: TextStyleUtil.rubik400(fontSize: 17),
              ).paddingOnly(top: 16.kh)),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(EditprofileView(), transition: Transition.downToUp);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: context.containerBG,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(ImageConstant.svgedit)
                          .paddingOnly(right: 4.kw),
                      Text(
                        'Edit Profile',
                        style: TextStyleUtil.rubik400(fontSize: 14.kh),
                      )
                    ],
                  ).paddingOnly(top: 8.kh, bottom: 8.kh),
                ),
              ).paddingOnly(top: 24.kh, bottom: 24.kh),
              Container(
                padding: EdgeInsets.only(top: 12.kh, bottom: 12.kh),
                decoration: BoxDecoration(
                    color: context.containerBG,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(ImageConstant.svgcalculator),
                        Text(
                          '21 Enrolled\nCourses',
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(ImageConstant.svgcalculator),
                        Text(
                          '7 Completed\nCourses',
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(ImageConstant.svgcalculator),
                        Text(
                          '37 Badges\nEarned',
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                'Achievments',
                style: TextStyleUtil.rubik500(fontSize: 20.kh),
              ).paddingOnly(top: 24.kh, bottom: 40.kh),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 104.kh,
                        width: 104.kw,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF191654), // Start color
                                Color(0xFF43C6AC), // End color
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              ImageConstant.svgcalculator,
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Badges',
                        style: TextStyleUtil.rubik400(fontSize: 14.kh),
                      ).paddingOnly(top: 8.kh),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 104.kh,
                        width: 104.kw,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFEAECC6),
                                Color(0xFF2BC0E4), // Start color
                                // End color
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              ImageConstant.svgcalculator,
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Badges',
                        style: TextStyleUtil.rubik400(fontSize: 14.kh),
                      ).paddingOnly(top: 8.kh),
                    ],
                  ),
                  Column(
                    children: [
                      professionalBadgeContainer(),
                      Text(
                        'Badges',
                        style: TextStyleUtil.rubik400(fontSize: 14.kh),
                      ).paddingOnly(top: 8.kh),
                    ],
                  ),
                ],
              ),
            ],
          ).paddingSymmetric(horizontal: 16.kw, vertical: 10.kh),
        )));
  }
}

class professionalBadgeContainer extends StatelessWidget {
  const professionalBadgeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104.kh,
      width: 104.kw,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFE000),
              Color(0xFF54BC77),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ImageConstant.svgcalculator,
          )
        ],
      ),
    );
  }
}
