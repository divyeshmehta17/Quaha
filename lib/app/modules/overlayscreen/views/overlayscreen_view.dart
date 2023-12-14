import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/QuahaCategoryListView.dart';
import 'package:quaha/app/components/Quaha_Text_Field.dart';
import 'package:quaha/app/modules/homescreen/controllers/homescreen_controller.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../../../constants/image_constant.dart';
import '../../../services/text_style_util.dart';
import '../../Categories/views/Categories_view.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/overlayscreen_controller.dart';

class OverlayscreenView extends GetView<OverlayscreenController> {
  final OverlayscreenController timerController =
      Get.put(OverlayscreenController());
  final HomescreenController overlaycontrol = Get.put(HomescreenController());

  OverlayscreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        backgroundColor: context.brandColor1,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(ImageConstant.pngHomeBg),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: SvgPicture.asset(ImageConstant.svgalign)
                                  .paddingOnly(right: 14.kw),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(14, 23, 95, 0.58),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(ImageConstant.svgdollar),
                                  Text(
                                    '2.1k',
                                    style: TextStyleUtil.rubik500(fontSize: 14),
                                  ).paddingSymmetric(horizontal: 5.kw),
                                  SvgPicture.asset(ImageConstant.svgplus),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(ImageConstant.svgNotification)
                                    .paddingOnly(right: 14.kw),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(const ProfileView());
                                  },
                                  child: const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ).paddingOnly(top: 23.kh, bottom: 28.kh),
                        QuahaTextField(
                          prefixIcon: SvgPicture.asset(ImageConstant.svgSearch),
                          hintText: 'Search Bar',
                          textStyle: TextStyleUtil.roboto400(fontSize: 12.kh),
                        ),
                        Obx(() {
                          final formattedTime = timerController.formattedTime;
                          return Stack(
                            children: [
                              RoundedProgressBar(
                                height: 85,
                                style: RoundedProgressBarStyle(
                                  widthShadow: 0,
                                  borderWidth: 0,
                                  backgroundProgress: const Color(0xFF0D73AE),
                                  colorProgress: const Color(0xFF008BDC),
                                ),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 16),
                                borderRadius: BorderRadius.circular(8),
                                percent:
                                    timerController.elapsedSeconds.value / 36,
                                childRight: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            ImageConstant.svgpiratetreasure),
                                        Text(
                                          '100 free coins \nevery hour',
                                          textAlign: TextAlign.start,
                                          style: TextStyleUtil.rubikWetPaint400(
                                              fontSize: 17.kh),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      formattedTime,
                                      textAlign: TextAlign.end,
                                      style:
                                          TextStyleUtil.roboto500(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 20,
                                child: SvgPicture.asset(
                                  ImageConstant.svgcloud,
                                  height: 12,
                                  color:
                                      const Color.fromRGBO(221, 238, 251, 0.62),
                                ),
                              ),
                              Positioned(
                                left: 200,
                                top: 5,
                                child: SvgPicture.asset(ImageConstant.svgcloud),
                              ),
                              Positioned(
                                left: 220,
                                top: 75,
                                child: Transform.rotate(
                                  angle: 0.2,
                                  child: SvgPicture.asset(
                                    ImageConstant.svgcloud,
                                    height: 12,
                                    color: const Color.fromRGBO(
                                        221, 238, 251, 0.62),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).paddingOnly(top: 24.kh),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Category',
                              style: TextStyleUtil.roboto600(fontSize: 24.kh),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.to(const Categories(),
                                    curve: Curves.easeOut);
                              },
                              child: Text('See All',
                                  style:
                                      TextStyleUtil.roboto500(fontSize: 12.kh)),
                            ),
                          ],
                        ).paddingOnly(bottom: 24.kh),
                        QuahaCategoryListView(text: ['test'], height: 90)
                            .paddingOnly(bottom: 24.kh),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Courses',
                              style: TextStyleUtil.roboto600(fontSize: 24.kh),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('See All',
                                  style:
                                      TextStyleUtil.roboto500(fontSize: 12.kh)),
                            )
                          ],
                        ).paddingOnly(bottom: 24.kh),
                        // QuahaPopularCoursesListView(text: 'courses by\nxyz')
                      ],
                    ).paddingSymmetric(horizontal: 16.kw),
                    Container(
                      color: const Color(0xff353A64).withOpacity(0.5),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 450.kh, left: 240.kw),
                            child: Row(
                              children: [
                                //SvgPicture.asset(ImageConstant.svgZebraHello),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
