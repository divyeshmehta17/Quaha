import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../../../components/ContainerCard.dart';
import '../../../components/QuahaCategoryListView.dart';
import '../../../components/coinRow.dart';
import '../../../constants/image_constant.dart';
import '../../../services/text_style_util.dart';
import '../../Categories/views/Categories_view.dart';
import '../../searchscreen/views/searchscreen_view.dart';
import '../controllers/coursesscreen_controller.dart';

class CoursesscreenView extends GetView<CoursesscreenController> {
  const CoursesscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => CoursesscreenController());
    return Scaffold(
      backgroundColor: context.brandColor1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  CustomCoinRowWidget().paddingOnly(bottom: 40.kh),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        const SearchscreenView(),
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: context.containerBG,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(ImageConstant.svgSearch)
                              .paddingOnly(right: 8.kw),
                          Text(
                            'Search Bar',
                            style: TextStyleUtil.roboto400(fontSize: 12.kh),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 15.kw, vertical: 12.kh),
                    ),
                  ),
                  ContainerCard(
                    label: 'Enjoy your favourite courses with Us',
                    text: 'Hurry UP!',
                    textStyle: TextStyleUtil.rubikWetPaint400(fontSize: 17.kh),
                  ).paddingOnly(top: 24.kh, bottom: 24.kh),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category',
                        style: TextStyleUtil.roboto600(fontSize: 24.kh),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(Categories(), curve: Curves.easeOut);
                        },
                        child: Text('See All',
                            style: TextStyleUtil.roboto500(fontSize: 12.kh)),
                      ),
                    ],
                  ).paddingOnly(bottom: 24.kh),
                  QuahaCategoryListView(
                    text: controller.categoriesName,
                    height: 90.kh,
                    imagePath: controller.categoriesBG,
                  ).paddingOnly(bottom: 21.kh),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.COURSEVIEWCONTENT);
                    },
                    child: understandingAI(),
                  )
                ],
              ).paddingSymmetric(horizontal: 16.kw, vertical: 16.kh),
            ],
          ),
        ),
      ),
    );
  }
}

class understandingAI extends StatelessWidget {
  const understandingAI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.containerBG,
          borderRadius: BorderRadius.circular(9.kw)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CommonImageView(
            imagePath: ImageConstant.pngcategoriescontainerbg,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Understanding Artificial Intelligence',
                style: TextStyleUtil.rubik600(fontSize: 16.kh),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Future Careers',
                    style: TextStyleUtil.rubik600(fontSize: 12.kh),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 11.kh,
                        color: Colors.yellow,
                      ).paddingOnly(right: 6.kw),
                      Text(
                        '4.5',
                        style: TextStyleUtil.rubik600(fontSize: 12.kh),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ).paddingOnly(left: 10.kw, right: 10.kw, bottom: 19.kh, top: 9.kh)
        ],
      ),
    );
  }
}
