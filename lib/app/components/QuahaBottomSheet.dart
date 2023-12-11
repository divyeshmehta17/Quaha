import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../services/text_style_util.dart';

class QuahaBottomSheet extends StatelessWidget {
  const QuahaBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 360.kh,
      decoration: BoxDecoration(
          color: context.brandColor1,
          borderRadius: BorderRadius.vertical(top: Radius.circular(32))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Search Filter',
                style: TextStyleUtil.rubik500(fontSize: 20),
              ),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    CupertinoIcons.xmark,
                    color: Colors.white,
                  )),
            ],
          ).paddingOnly(left: 78.kw, top: 24.kh),
          Text(
            'Search Filter',
            style: TextStyleUtil.rubik500(fontSize: 16),
          ).paddingOnly(top: 12.kh),
          GroupButton(
              options: GroupButtonOptions(
                  groupingType: GroupingType.wrap,
                  unselectedColor: context.containerBG,
                  runSpacing: 3,
                  mainGroupAlignment: MainGroupAlignment.start,
                  unselectedTextStyle: TextStyleUtil.roboto400(fontSize: 14.kh),
                  borderRadius: BorderRadius.circular(8)),
              buttons: [
                'Design',
                'Visual Identity',
                'Technology',
                'UI/UX',
                'Advertising',
                'Web Design',
                'Motion',
                'Administration',
                'Graphic',
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Add your action for the first button
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.brandColor1,
                    side: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Clear All').paddingSymmetric(vertical: 18.kh),
                ),
              ),
              SizedBox(width: 16), // Add spacing between the buttons
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Add your action for the second button
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    side: BorderSide(
                      color: Colors.blue,
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Apply Filter').paddingSymmetric(vertical: 18.kh),
                ),
              ),
            ],
          ).paddingOnly(top: 40.kh)
        ],
      ).paddingSymmetric(horizontal: 16.kw, vertical: 32.kh),
    );
  }
}
