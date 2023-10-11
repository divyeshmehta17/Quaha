import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';
import 'package:quaha/app/components/quaha_app_bar.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../components/Quaha_Button.dart';
import '../../../services/text_style_util.dart';
import '../../homescreen/controllers/homescreen_controller.dart';
import '../controllers/details1_controller.dart';

class Details1View extends GetView<Details1Controller> {
  const Details1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => Details1Controller());
    Get.lazyPut(() => HomescreenController());
    return Scaffold(
      backgroundColor: context.brandColor1,
      appBar: QuahaAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SmoothPageIndicator(
              controller: controller.pageController,
              count: 4,
              effect: const SlideEffect(
                  spacing: 0,
                  radius: 0,
                  dotHeight: 8,
                  dotWidth: 80.0,
                  dotColor: Colors.grey,
                  activeDotColor: Color(0xFF008BDC)),
            ),
          ),
          Expanded(
            child: PageView(
              controller: controller.pageController,
              children: [
                Label1Widget(),
                Label2Widget(),
                Label3Widget(),
                Label4Widget(),
              ],
            ),
          ),
          QuahaButton(
            onpressed: () {
              controller.goToNextPage();
            },
            label: 'Next',
            labelStyle: TextStyleUtil.roboto600(fontSize: 14),
          )
        ],
      ).paddingSymmetric(horizontal: 16.kw, vertical: 32.kh),
    );
  }
}

class Label1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Details1Controller controller = Get.put(Details1Controller());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'What is your highest qualification?',
          style: TextStyleUtil.roboto500(fontSize: 17),
        ).paddingOnly(top: 40.kh, bottom: 10.kh),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In amet, egestas leo amet, mi pellentesque. A porttitor turpis feugiat tempus, id dui. Proin tellus orci, augue a accumsan. Ullamcorper augue dolor ullamcorper eget id.',
          style: TextStyleUtil.roboto400(fontSize: 14),
        ),
        Obx(() => Container(
              decoration: BoxDecoration(
                color: const Color(0xFF575C83), // Background color
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  padding: EdgeInsets.symmetric(horizontal: 16.kw),
                  dropdownColor: Color(0xFF575C83),
                  value: controller.selectedCountry.value, // Use controller
                  onChanged: (String? newValue) {
                    // Update selected value using controller
                    controller.selectedCountry.value = newValue!;
                  },
                  icon: Icon(
                    CupertinoIcons.chevron_down,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  items: <String>[
                    'Option 1',
                    'Option 2',
                    'Option 3',
                    // Add more countries as needed
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyleUtil.rubik400(fontSize: 14),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ).paddingSymmetric(vertical: 16.kh)),
      ],
    );
  }
}

class Label2Widget extends StatelessWidget {
  final buttonController = GroupButtonController();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'What describes you currently',
          style: TextStyleUtil.roboto500(fontSize: 17),
        ).paddingOnly(
          top: 40.kh,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In amet, egestas leo amet, mi pellentesque. A porttitor turpis feugiat tempus, id dui. Proin tellus orci, augue a accumsan. Ullamcorper augue dolor ullamcorper eget id.',
          style: TextStyleUtil.roboto400(fontSize: 14),
        ).paddingOnly(top: 8.kh, bottom: 16.kh),
        GroupButton(
          isRadio: false,
          options: GroupButtonOptions(
              groupingType: GroupingType.wrap,
              buttonHeight: 48.kh,
              buttonWidth: 343.kw,
              unselectedColor: context.containerBG,
              alignment: AlignmentDirectional(-0.9, 0),
              unselectedTextStyle: TextStyleUtil.roboto400(fontSize: 14.kh),
              borderRadius: BorderRadius.circular(8)),
          buttons: [
            "In a Career",
            "In High School",
            "In University",
          ],
        ),
      ],
    ));
  }
}

class Label3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Have you been denied access to\nopportunities and jobs because of a\nlack of job and educational experience?',
          style: TextStyleUtil.roboto500(fontSize: 20),
        ).paddingOnly(
          top: 40.kh,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In amet, egestas leo amet, mi pellentesque. A porttitor turpis feugiat tempus, id dui. Proin tellus orci, augue a accumsan. Ullamcorper augue dolor ullamcorper eget id.',
          style: TextStyleUtil.roboto400(fontSize: 14),
        ).paddingOnly(top: 8.kh, bottom: 16.kh),
        GroupButton(
          isRadio: false,
          options: GroupButtonOptions(
              groupingType: GroupingType.wrap,
              buttonHeight: 48.kh,
              buttonWidth: 343.kw,
              unselectedColor: context.containerBG,
              alignment: AlignmentDirectional(-0.9, 0),
              unselectedTextStyle: TextStyleUtil.roboto400(fontSize: 14.kh),
              borderRadius: BorderRadius.circular(8)),
          buttons: [
            "Yes",
            "No",
          ],
        ),
      ],
    ));
  }
}

class Label4Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Details1Controller controller = Get.put(Details1Controller());
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Choose Your Country Of Residence',
          style: TextStyleUtil.roboto500(fontSize: 17),
        ).paddingOnly(top: 40.kh, bottom: 10.kh),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In amet, egestas leo amet, mi pellentesque. A porttitor turpis feugiat tempus, id dui. Proin tellus orci, augue a accumsan. Ullamcorper augue dolor ullamcorper eget id.',
          style: TextStyleUtil.roboto400(fontSize: 14),
        ),
        Obx(() => Container(
              decoration: BoxDecoration(
                color: const Color(0xFF575C83), // Background color
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  padding: EdgeInsets.symmetric(horizontal: 16.kw),
                  dropdownColor: Color(0xFF575C83),
                  value: controller.selectedCountry.value, // Use controller
                  onChanged: (String? newValue) {
                    // Update selected value using controller
                    controller.selectedCountry.value = newValue!;
                  },
                  icon: Icon(
                    CupertinoIcons.chevron_down,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  items: <String>[
                    'Option 1',
                    'Option 2',
                    'Option 3',
                    // Add more countries as needed
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyleUtil.rubik400(fontSize: 14),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ).paddingSymmetric(vertical: 56.kh)),
      ],
    ));
  }
}
