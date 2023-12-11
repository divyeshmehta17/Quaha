import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';
import 'package:quaha/app/components/Quaha_Text_Field.dart';
import 'package:quaha/app/modules/searchtechnology/views/searchtechnology_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../components/QuahaBottomSheet.dart';
import '../../../components/QuahaPopularCourses.dart';
import '../../../constants/image_constant.dart';
import '../controllers/searchscreen_controller.dart';

List categoriesPage = [SearchtechnologyView()];

class SearchscreenView extends GetView<SearchscreenController> {
  const SearchscreenView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SearchscreenController());
    return Scaffold(
      backgroundColor: context.brandColor1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Search',
                style: TextStyleUtil.rubik500(fontSize: 24.kh),
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 48.kh,
                      child: QuahaTextField(
                        controller: controller.searchController,
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
                          .paddingSymmetric(horizontal: 12.kh, vertical: 12.kw),
                    ),
                  )
                ],
              ).paddingOnly(top: 16.kh, bottom: 24.kh),
              Text(
                'Recent Viewed',
                style: TextStyleUtil.rubik500(fontSize: 24.kh),
              ).paddingOnly(bottom: 24.kh),
              QuahaGroupButtons(
                buttonName: [
                  'Design',
                  'Web Development',
                  'Technology',
                  'Marketing',
                  'Technology',
                ],
              ).paddingOnly(bottom: 24.kh),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Category',
                    style: TextStyleUtil.rubik500(fontSize: 24.kh),
                  ),
                  Text(
                    'See All',
                    style: TextStyleUtil.rubik400(fontSize: 14.kh),
                  ),
                ],
              ).paddingOnly(bottom: 24.kh),
              Container(
                  child: QuahaSearchScreenGridView(
                categoriesPage: categoriesPage,
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                categories: [
                  'Design',
                  'Development',
                  'Marketing',
                  'UI/UX',
                  'UI/UX',
                  'UI/UX'
                ],
                imagePaths: ImageConstant.pngdesign,
                itemCount: 6,
              ))
            ],
          ).paddingSymmetric(horizontal: 16.kw, vertical: 16.kh),
        ),
      ),
    );
  }
}

class QuahaGroupButtons extends StatelessWidget {
  final List<String> buttonName;
  final Function(String)? onSelected;

  QuahaGroupButtons({super.key, required this.buttonName, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return GroupButton(
      options: GroupButtonOptions(
          mainGroupAlignment: MainGroupAlignment.start,
          spacing: 10.kw,
          runSpacing: 1.kh,
          groupingType: GroupingType.wrap,
          borderRadius: BorderRadius.circular(8),
          unselectedTextStyle: TextStyleUtil.roboto400(fontSize: 14),
          unselectedColor: context.containerBG),
      buttons: buttonName,
      onSelected: (value, index, isSelected) {
        // Call the callback function with the selected button's value
        onSelected!(value);
      },
    );
  }
}
