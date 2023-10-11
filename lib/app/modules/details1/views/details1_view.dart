import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/quaha_app_bar.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../components/Quaha_Button.dart';
import '../../../services/text_style_util.dart';
import '../controllers/details1_controller.dart';

class Details1View extends GetView<Details1Controller> {
  const Details1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => Details1Controller());
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
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'What would you like to learn about?',
          style: TextStyleUtil.roboto500(fontSize: 20),
        ).paddingOnly(top: 40.kh, bottom: 35.kh),
        MultiSelectContainer(
            itemsPadding:
                EdgeInsets.symmetric(vertical: 11.kh, horizontal: 11.kw),
            itemsDecoration: MultiSelectDecorations(
              decoration: BoxDecoration(
                color: const Color(0xFF575C83),
                borderRadius: BorderRadius.circular(8),
              ),
              selectedDecoration: BoxDecoration(
                color: const Color(0xFF575C83),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black, // Customize the shadow color
                    blurRadius: 0.5, // Adjust the blur radius as needed
                    spreadRadius: 1.0, // Adjust the spread radius as needed
                    offset: Offset(0, 2), // Adjust the offset as needed
                  )
                ],
              ),
            ),
            textStyles: MultiSelectTextStyles(
                textStyle: TextStyleUtil.roboto400(fontSize: 16)),
            items: [
              MultiSelectCard(value: 'Finance ', label: 'Finance & Accounting'),
              MultiSelectCard(value: 'Entertainment', label: 'Film & Tv'),
              MultiSelectCard(value: 'Bussiness', label: 'Entrepreneurship'),
              MultiSelectCard(value: 'Social Media', label: 'Social Media'),
              MultiSelectCard(value: 'Economy', label: 'Creator Economy'),
              MultiSelectCard(
                  value: 'Technology & the Future',
                  label: 'Technology & the Future'),
              MultiSelectCard(value: 'Art & Design', label: 'Art & Design'),
              MultiSelectCard(
                  value: 'Health & Fitness', label: 'Health & Fitness'),
              MultiSelectCard(
                  value: 'Environment & Science',
                  label: 'Environment & Science'),
              MultiSelectCard(
                  value: 'Personal Growth', label: 'Personal Growth'),
              MultiSelectCard(
                  value: 'Branding & Marketing', label: 'Branding & Marketing'),
              MultiSelectCard(value: 'Farming', label: 'Farming'),
            ],
            onChange: (allSelectedItems, selectedItem) {}),
      ],
    ));
  }
}

class Label2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'What would you like to learn about?',
          style: TextStyleUtil.roboto500(fontSize: 20),
        ).paddingOnly(top: 40.kh, bottom: 35.kh),
        MultiSelectContainer(
          itemsPadding:
              EdgeInsets.symmetric(vertical: 11.kh, horizontal: 11.kw),
          itemsDecoration: MultiSelectDecorations(
            decoration: BoxDecoration(
              color: const Color(0xFF575C83),
              borderRadius: BorderRadius.circular(8),
            ),
            selectedDecoration: BoxDecoration(
              color: const Color(0xFF575C83),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 0.5,
                  spreadRadius: 1.0,
                  offset: Offset(0, 2),
                )
              ],
            ),
          ),
          textStyles: MultiSelectTextStyles(
              textStyle: TextStyleUtil.roboto400(fontSize: 16)),
          items: [
            MultiSelectCard(
              value: 'In High School',
              label: 'In High School',
            ),
            MultiSelectCard(value: 'Graduating', label: 'Graduating'),
            MultiSelectCard(value: 'In a Career', label: 'In a Career'),
            MultiSelectCard(value: 'Have a Startup', label: 'Have a Startup'),
            MultiSelectCard(
                value: 'Looking for Startup', label: 'Looking for Startup'),
            MultiSelectCard(
              value: 'Currently Unemployed',
              label: 'Currently Unemployed',
            ),
          ],
          onChange: (allSelectedItems, selectedItem) {},
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
          'Where did you hear about Quaha?',
          style: TextStyleUtil.roboto500(fontSize: 20),
        ).paddingOnly(top: 40.kh, bottom: 35.kh),
        MultiSelectContainer(
          itemsPadding:
              EdgeInsets.symmetric(vertical: 11.kh, horizontal: 11.kw),
          itemsDecoration: MultiSelectDecorations(
            decoration: BoxDecoration(
              color: const Color(0xFF575C83),
              borderRadius: BorderRadius.circular(8),
            ),
            selectedDecoration: BoxDecoration(
              color: const Color(0xFF575C83),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 0.5,
                  spreadRadius: 1.0,
                  offset: Offset(0, 2),
                )
              ],
            ),
          ),
          textStyles: MultiSelectTextStyles(
              textStyle: TextStyleUtil.roboto400(fontSize: 16)),
          items: [
            MultiSelectCard(
              value: 'Social Media',
              label: 'Social Media',
            ),
            MultiSelectCard(value: 'Friends', label: 'Friends'),
            MultiSelectCard(value: 'Youtube', label: 'Youtube'),
            MultiSelectCard(value: 'Radio', label: 'Radio'),
            MultiSelectCard(value: 'Other', label: 'Other'),
          ],
          onChange: (allSelectedItems, selectedItem) {},
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
          'Choose Your Country Residency',
          style: TextStyleUtil.roboto500(fontSize: 17),
        ).paddingOnly(top: 40.kh, bottom: 35.kh),
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
            ).paddingSymmetric(horizontal: 16.kw, vertical: 172.kh)),
      ],
    ));
  }
}
