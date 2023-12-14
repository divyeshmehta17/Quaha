import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../constants/image_constant.dart';
import '../services/text_style_util.dart';

class QuahaPopularCoursesListView extends StatelessWidget {
  final List<String>? courseName;
  final List<String>? authorName;
  final List<String>? svgPath;
  final Function()? onTap;
  QuahaPopularCoursesListView({
    Key? key,
    this.courseName,
    this.authorName,
    this.onTap,
    this.svgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 191.kh,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, index) {
          return Obx(
            () => GestureDetector(
              onTap: onTap,
              child: Container(
                width: 170.kw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: context.containerBG,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 115.kw,
                      height: 115.kh,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: context.containerBG,
                      ),
                      child: CommonImageView(
                        imagePath: svgPath![index],
                        fit: BoxFit.fill,
                      ).paddingOnly(
                          top: 7.kh, bottom: 5.kh, right: 7.kw, left: 7.kw),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          courseName![index],
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'by ',
                                  style:
                                      TextStyleUtil.rubik400(fontSize: 10.kh),
                                ),
                                Text(
                                  authorName![index],
                                  style:
                                      TextStyleUtil.rubik500(fontSize: 10.kh),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.white,
                                  size: 12.kh,
                                ),
                                Text(
                                  '4.5',
                                  style:
                                      TextStyleUtil.rubik500(fontSize: 10.kh),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ).paddingOnly(left: 6.kw, right: 6.kw, top: 10),
                  ],
                ),
              ).paddingOnly(right: 16.kw),
            ),
          );
        },
      ),
    );
  }
}

class QuahaSearchScreenGridView extends StatelessWidget {
  final List<String> categories;
  final String? svgImages;
  final String? imagePaths;
  final int itemCount;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final List? categoriesPage;

  QuahaSearchScreenGridView({
    Key? key,
    required this.categories,
    this.svgImages,
    this.imagePaths,
    required this.crossAxisCount,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.itemCount,
    this.categoriesPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
      ),
      itemCount: itemCount,
      itemBuilder: (BuildContext context, index) {
        return _buildGridItem(context, index);
      },
    );
  }

  Widget _buildGridItem(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Get.to(categoriesPage?[index]);
      },
      child: Stack(
        children: [
          Center(
            child: Container(
              child: CommonImageView(
                svgPath: svgImages,
                imagePath: imagePaths,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Text(
              categories[index],
              style: TextStyleUtil.rubikWetPaint400(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class QuahaCategoriesGridView extends StatelessWidget {
  final List<String> categories;
  final List<String?>? svgImages;
  final List<String?>? imagePaths;
  final List? categoriesPage;
  final int itemCount;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final List<Gradient> gradients;

  QuahaCategoriesGridView({
    Key? key,
    required this.categories,
    this.svgImages,
    this.imagePaths,
    required this.crossAxisCount,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.itemCount,
    required this.gradients,
    this.categoriesPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
        childAspectRatio: 16 / 9,
      ),
      itemCount: itemCount,
      itemBuilder: (BuildContext context, index) {
        return _buildGridItem(context, index);
      },
    );
  }

  Widget _buildGridItem(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Get.to(categoriesPage?[index]);
      },
      child: Center(
        child: Container(
          height: 93.kh,
          decoration: BoxDecoration(
            gradient: gradients[index],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                categories[index],
                style: TextStyleUtil.rubik500(fontSize: 16.kh),
              ),
              Expanded(
                child: CommonImageView(
                  svgPath: svgImages?[index],
                  imagePath: imagePaths?[index],
                ),
              ),
            ],
          ).paddingOnly(left: 9.kw),
        ),
      ),
    );
  }
}

class QuahaSubCategoriesScreenGridView extends StatelessWidget {
  final String? svgImages;
  final List? popularCoursesPage;
  final String text;
  final String? imagePaths;
  final int itemCount;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;

  QuahaSubCategoriesScreenGridView({
    Key? key,
    this.svgImages,
    this.imagePaths,
    required this.crossAxisCount,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.itemCount,
    required this.text,
    this.popularCoursesPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
      ),
      itemCount: itemCount,
      itemBuilder: (BuildContext context, index) {
        return _buildGridItem(context, index);
      },
    );
  }

  Widget _buildGridItem(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Get.to(popularCoursesPage?[index]);
      },
      onLongPress: () {
        _showPopUp(context);
      },
      child: Container(
        width: 170.kh,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: context.containerBG,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset(ImageConstant.svgmarektingdummyimage)
                .paddingOnly(top: 7.kh, bottom: 5.kh),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  text,
                  style: TextStyleUtil.rubik500(fontSize: 14),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      '4.5',
                      style: TextStyleUtil.rubik500(fontSize: 14),
                    ),
                  ],
                )
              ],
            ).paddingOnly(left: 6.kw),
          ],
        ),
      ),
    );
  }

  void _showPopUp(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black.withOpacity(0.7),
      transitionDuration: Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Transform.scale(
                scale: animation.value,
                child: _buildPopUpContent(context),
              );
            },
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0.0, 1.0),
            end: Offset(0.0, 0.0),
          ).animate(animation),
          child: child,
        );
      },
    );
  }

  Widget _buildPopUpContent(BuildContext context) {
    return Scaffold(
      backgroundColor: context.brandColor1,
      body: Container(
        width: double.infinity,
        color: context.brandColor1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                CommonImageView(
                  imagePath: ImageConstant.pngGraphicDesigner,
                ),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    CupertinoIcons.xmark,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              "Graphic Design",
              style: TextStyleUtil.rubik600(fontSize: 20.kh),
            ).paddingOnly(top: 16.kh),
            Text(
              "\$50",
              style: TextStyleUtil.rubik600(fontSize: 17.kh),
            ).paddingOnly(top: 8.kh, bottom: 16.kh),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tellus lorem gravida turpis mus in. Vel, iaculis dui, est id. Amet sagittis.Tellus lorem gravida turpis mus in. Vel, iaculis dui, est id. Amet sagittis.n",
              style: TextStyleUtil.rubik400(fontSize: 14.kh),
            ),
          ],
        ).paddingSymmetric(horizontal: 16.kw),
      ),
    );
  }
}

class QuahaDiscoverSeeAllGridView extends StatelessWidget {
  final List<String> categories;
  final String? svgImages;
  final String? imagePaths;
  final int itemCount;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final List? quizIntro;

  QuahaDiscoverSeeAllGridView({
    Key? key,
    required this.categories,
    this.svgImages,
    this.imagePaths,
    required this.crossAxisCount,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.itemCount,
    this.quizIntro,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
      ),
      itemCount: itemCount,
      itemBuilder: (BuildContext context, index) {
        return _buildGridItem(context, index);
      },
    );
  }

  Widget _buildGridItem(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Get.to(quizIntro?[index]);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: CommonImageView(
              svgPath: svgImages,
              imagePath: imagePaths,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            categories[index],
            style: TextStyleUtil.rubik500(fontSize: 14.kh),
          ).paddingOnly(bottom: 5.kh, top: 5.kh),
          Row(
            children: [
              SvgPicture.asset(ImageConstant.svgFacebook)
                  .paddingOnly(right: 9.kw),
              Text(
                'Facebook_Business',
                style: TextStyleUtil.rubik400(fontSize: 10.kh),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class QuahaExcitingQuizesSeeAllGridView extends StatelessWidget {
  final List<String> categories;
  final String? svgImages;
  final String? imagePaths;
  final int itemCount;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final List? excitingQuizesIntro;

  QuahaExcitingQuizesSeeAllGridView({
    Key? key,
    required this.categories,
    this.svgImages,
    this.imagePaths,
    required this.crossAxisCount,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.itemCount,
    this.excitingQuizesIntro,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
      ),
      itemCount: itemCount,
      itemBuilder: (BuildContext context, index) {
        return _buildGridItem(context, index);
      },
    );
  }

  Widget _buildGridItem(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Get.to(excitingQuizesIntro?[index]);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: CommonImageView(
              svgPath: svgImages,
              imagePath: imagePaths,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            categories[index],
            style: TextStyleUtil.rubik500(fontSize: 14.kh),
          ).paddingOnly(bottom: 5.kh, top: 5.kh),
          Row(
            children: [
              SvgPicture.asset(ImageConstant.svgFacebook)
                  .paddingOnly(right: 9.kw),
              Text(
                'Facebook_Business',
                style: TextStyleUtil.rubik400(fontSize: 10.kh),
              ),
            ],
          )
        ],
      ),
    );
  }
}
