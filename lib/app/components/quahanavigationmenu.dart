import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../constants/image_constant.dart';
import '../services/text_style_util.dart';

class QuahaMenu extends StatelessWidget {
  QuahaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: 266.kw,
        backgroundColor: context.brandColor1,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 61.kh,
                  width: 61.kw,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    Text(
                      'Good Morning',
                      style: TextStyleUtil.rubik400(fontSize: 17.kh),
                    ),
                    Text(
                      'Dummy Name',
                      style: TextStyleUtil.rubik500(fontSize: 20.kh),
                    ),
                  ],
                )
              ],
            ).paddingOnly(top: 20.kh),
            Row(
              children: [
                SvgPicture.asset(ImageConstant.svgleaderboard),
                Text(
                  'Leaderboard',
                  style: TextStyleUtil.rubik400(fontSize: 17.kh),
                ).paddingSymmetric(horizontal: 16.kw),
              ],
            ).paddingOnly(top: 24.kh, bottom: 16.kh),
            Divider(
              thickness: 1.kh,
              color: context.containerBG,
            ),
            Row(
              children: [
                SvgPicture.asset(ImageConstant.svgcreditcards),
                Text(
                  'Payment Details',
                  style: TextStyleUtil.rubik400(fontSize: 17.kh),
                ).paddingSymmetric(horizontal: 16.kw),
              ],
            ).paddingOnly(top: 24.kh, bottom: 16.kh),
            Divider(
              thickness: 1.kh,
              color: context.containerBG,
            ),
            Row(
              children: [
                SvgPicture.asset(ImageConstant.svgmedal),
                Text(
                  'Achievements',
                  style: TextStyleUtil.rubik400(fontSize: 17.kh),
                ).paddingSymmetric(horizontal: 16.kw),
              ],
            ).paddingOnly(top: 24.kh, bottom: 16.kh),
            Divider(
              thickness: 1.kh,
              color: context.containerBG,
            ),
            Row(
              children: [
                SvgPicture.asset(ImageConstant.svgcommunity),
                Text(
                  'Community',
                  style: TextStyleUtil.rubik400(fontSize: 17.kh),
                ).paddingSymmetric(horizontal: 16.kw),
              ],
            ).paddingOnly(top: 24.kh, bottom: 16.kh),
            Divider(
              thickness: 1.kh,
              color: context.containerBG,
            ),
            Row(
              children: [
                SvgPicture.asset(ImageConstant.svgshop),
                Text(
                  'Marketplace',
                  style: TextStyleUtil.rubik400(fontSize: 17.kh),
                ).paddingSymmetric(horizontal: 16.kw),
              ],
            ).paddingOnly(top: 24.kh, bottom: 16.kh),
            Divider(
              thickness: 1.kh,
              color: context.containerBG,
            ),
            Row(
              children: [
                SvgPicture.asset(ImageConstant.svgsettings),
                Text(
                  'Settings',
                  style: TextStyleUtil.rubik400(fontSize: 17.kh),
                ).paddingSymmetric(horizontal: 16.kw),
              ],
            ).paddingOnly(top: 24.kh, bottom: 16.kh),
            Divider(
              thickness: 1.kh,
              color: context.containerBG,
            ),
            Row(
              children: [
                SvgPicture.asset(ImageConstant.svginvitefriends),
                Text(
                  'Invite Friends',
                  style: TextStyleUtil.rubik400(fontSize: 17.kh),
                ).paddingSymmetric(horizontal: 16.kw),
              ],
            ).paddingOnly(top: 24.kh, bottom: 16.kh),
            Divider(
              thickness: 1.kh,
              color: context.containerBG,
            ),
            Row(
              children: [
                SvgPicture.asset(ImageConstant.svgshield),
                Text(
                  'Terms & Conditions',
                  style: TextStyleUtil.rubik400(fontSize: 17.kh),
                ).paddingSymmetric(horizontal: 16.kw),
              ],
            ).paddingOnly(top: 24.kh, bottom: 16.kh),
            Divider(
              thickness: 1.kh,
              color: context.containerBG,
            ),
            Row(
              children: [
                SvgPicture.asset(ImageConstant.svglogout),
                Text(
                  'Log Out',
                  style: TextStyleUtil.rubik400(fontSize: 17.kh),
                ).paddingSymmetric(horizontal: 16.kw),
              ],
            ).paddingOnly(top: 24.kh, bottom: 16.kh),
            Divider(
              thickness: 1.kh,
              color: context.containerBG,
            ),
          ],
        ).paddingSymmetric(horizontal: 16.kh),
      ),
    );
  }
}
