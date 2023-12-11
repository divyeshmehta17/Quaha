import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/QuahaPopularCourses.dart';
import 'package:quaha/app/components/quaha_app_bar.dart';
import 'package:quaha/app/modules/searchscreen/views/searchscreen_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../controllers/searchtechnology_controller.dart';

class SearchtechnologyView extends GetView<SearchtechnologyController> {
  const SearchtechnologyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SearchtechnologyController());
    return Scaffold(
        backgroundColor: context.brandColor1,
        appBar: QuahaAppBar(
          title: Text('Technology'),
          centerTitle: true,
          textStyle: TextStyleUtil.roboto500(fontSize: 20.kh),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Sub Category',
                  style: TextStyleUtil.rubik500(fontSize: 24.kh),
                ).paddingOnly(top: 20.kh, bottom: 16.kh),
                QuahaGroupButtons(
                  buttonName: const [
                    'Technology',
                    'Leadership',
                    'Software',
                    'Administration'
                  ],
                  onSelected: controller.navigateToPage,
                ),
                Text(
                  'Top Courses',
                  style: TextStyleUtil.rubik500(fontSize: 24.kh),
                ).paddingOnly(top: 20.kh, bottom: 16.kh),
                // QuahaPopularCoursesListView(text: 'Course by xyz'),
                Text(
                  'All Courses',
                  style: TextStyleUtil.rubik500(fontSize: 24.kh),
                ).paddingOnly(top: 20.kh, bottom: 16.kh),
                QuahaSubCategoriesScreenGridView(
                  crossAxisCount: 2,
                  mainAxisSpacing: 24.kh,
                  crossAxisSpacing: 16.kw,
                  itemCount: 3,
                  text: 'course by xyz',
                )
              ],
            ).paddingOnly(left: 16.kh, right: 16.kh),
          ),
        ));
  }
}
