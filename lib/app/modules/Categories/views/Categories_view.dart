import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/QuahaPopularCourses.dart';
import 'package:quaha/app/components/quaha_app_bar.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../searchtechnology/views/searchtechnology_view.dart';
import '../controllers/Categories_controller.dart';

class Categories extends GetView<CategoriesController> {
  const Categories({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Gradient> categoryGradients = [
      const LinearGradient(
        colors: [
          Color(0xFFFA8D8D),
          Color(0xFFEB4949),
        ],
      ),
      const LinearGradient(
        colors: [
          Color(0xFFE6B1E7),
          Color(0xFFE644EA),
        ],
      ),
      const LinearGradient(
        colors: [
          Color(0xFFADF59A),
          Color(0xFFF48E16),
        ],
      ),
      const LinearGradient(
        colors: [
          Color(0xFF2D41F8),
          Color(0xFF75DFF7),
        ],
      )
    ];
    List categoryPage = [
      SearchtechnologyView(),
    ];
    List<String> categoryText = [
      'Design',
      'Web \nDevelopment',
      'Seo &\nMarketing',
      'HR\nManagement'
    ];
    List<String> categorySVGImages = [
      ImageConstant.svgdesignsoftware,
      ImageConstant.svgdataanalysis,
      ImageConstant.svgtarget,
      ImageConstant.svghiring
    ];
    return Scaffold(
        backgroundColor: context.brandColor1,
        body: SafeArea(
            child: Column(
          children: [
            QuahaAppBar(
              centerTitle: true,
              title: const Text('Categories'),
              textStyle: TextStyleUtil.roboto500(fontSize: 20.kh),
            ),
            QuahaCategoriesGridView(
              categories: categoryText,
              categoriesPage: categoryPage,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 16,
              itemCount: 4,
              gradients: categoryGradients,
              svgImages: categorySVGImages,
            ).paddingSymmetric(horizontal: 16.kw)
          ],
        )));
  }
}
