import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/QuahaPopularCourses.dart';
import 'package:quaha/app/components/Quaha_Text_Field.dart';
import 'package:quaha/app/components/quaha_app_bar.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/courseviewcontent/views/courseviewcontent_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../components/QuahaBottomSheet.dart';
import '../controllers/popularcourses_controller.dart';

class PopularcoursesView extends GetView<PopularcoursesController> {
  List popularCoursesPage = [CourseviewcontentView()];
  PopularcoursesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.brandColor1,
        appBar: QuahaAppBar(
          title: Text('Popular Courses'),
          centerTitle: true,
          textStyle: TextStyleUtil.rubik500(fontSize: 20.kh),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 48.kh,
                        child: QuahaTextField(
                          //controller: controller.searchController,
                          hintText: 'Search Bar',
                          obscureText: false,
                          textStyle: TextStyleUtil.rubik500(fontSize: 12.kh),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 16.kw, right: 8.kw),
                            child: SvgPicture.asset(ImageConstant.svgSearch),
                          ),
                          preficIconConstraints:
                              BoxConstraints(minHeight: 24.kh, minWidth: 24.kh),
                          readonly: false,
                        ),
                      ).paddingOnly(
                        right: 16.kw,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                          QuahaBottomSheet(),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: context.containerBG,
                            borderRadius: BorderRadius.circular(8)),
                        child: SvgPicture.asset(ImageConstant.svgFilters)
                            .paddingSymmetric(
                                horizontal: 12.kh, vertical: 12.kw),
                      ),
                    )
                  ],
                ).paddingOnly(top: 20.kh, bottom: 24.kh),
                QuahaSubCategoriesScreenGridView(
                  popularCoursesPage: popularCoursesPage,
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
