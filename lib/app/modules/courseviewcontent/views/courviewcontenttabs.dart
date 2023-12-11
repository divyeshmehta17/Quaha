import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../../../components/Quaha_Button.dart';
import '../../../components/common_image_view.dart';
import '../../../constants/image_constant.dart';
import '../../../services/text_style_util.dart';

TabBar courseContentTabBar() {
  return TabBar(
    tabs: [
      Row(
        children: [
          CommonImageView(
            svgPath: ImageConstant.svgCourses,
            height: 24.kh,
            width: 24.kw,
          ).paddingOnly(right: 8.kw),
          Text(
            'Lesson \nContents(10)',
            style: TextStyleUtil.rubik500(fontSize: 14.kh),
          )
        ],
      ).paddingOnly(bottom: 8.kh),
      Row(
        children: [
          Icon(Icons.star_border_outlined).paddingOnly(right: 8.kw),
          Text(
            'Reviews(29)',
            style: TextStyleUtil.rubik500(fontSize: 14.kh),
          )
        ],
      ).paddingOnly(bottom: 8.kh),
    ],
    indicatorColor: Colors.blue,
    unselectedLabelColor: Colors.grey,
    labelColor: Colors.black,
  );
}

TabBarView courseContentTabbarView(BuildContext context) {
  return TabBarView(children: [
    Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ExpansionTile(
                  backgroundColor: context.containerBG,
                  collapsedBackgroundColor: context.containerBG,
                  iconColor: Colors.white,
                  maintainState: true,
                  collapsedIconColor: Colors.white,
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.kw)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.kw)),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          CommonImageView(
                            imagePath: ImageConstant.pngmoduleimage,
                          ).paddingOnly(right: 13.kw),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Plant growth and theory',
                                style: TextStyleUtil.rubik500(fontSize: 14.kh),
                              ),
                              Container(
                                width: 190.kw,
                                child: Text(
                                  'Explore the importance of how to determine your niche before starting a Podcast.The future of podacasting is lucrative in the new modern sense of media and broadcasting with the evolution of AI this will indeed grow to be the future',
                                  style:
                                      TextStyleUtil.rubik400(fontSize: 12.kh),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ).paddingOnly(top: 16.kh, bottom: 16.kh),
                  children: [
                    Column(
                      children: [
                        ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  (index + 1).toString(),
                                  style:
                                      TextStyleUtil.rubik400(fontSize: 14.kh),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lorem Lorem ipsum dolor sit amet ipsum',
                                      style: TextStyleUtil.rubik400(
                                          fontSize: 12.kh),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.closed_caption_off_outlined,
                                          color: Colors.white,
                                          size: 16.kh,
                                        ),
                                        Text(
                                          'Video -03:08 mins',
                                          style: TextStyleUtil.rubik400(
                                              fontSize: 10.kh),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.file_download_outlined,
                                  size: 24.kh,
                                  color: context.grey,
                                )
                              ],
                            ).paddingSymmetric(
                                horizontal: 9.kw, vertical: 12.kh);
                          },
                        ),
                        QuahaButton(
                                onpressed: () {},
                                label: 'Download All',
                                labelStyle:
                                    TextStyleUtil.rubik600(fontSize: 14.kh))
                            .paddingOnly(
                                left: 94.kw,
                                right: 94.kw,
                                top: 16.kh,
                                bottom: 23.kh),
                        QuahaButton(
                                onpressed: () {},
                                label: 'Unlock Module',
                                svgPath: ImageConstant.svglock,
                                labelStyle:
                                    TextStyleUtil.rubik600(fontSize: 14.kh))
                            .paddingOnly(left: 8.kw, right: 8.kw, bottom: 13.kh)
                      ],
                    ),
                  ],
                ).paddingOnly(bottom: 16.kh, top: 24.kh);
              }),
        ),
        Container(
          decoration: BoxDecoration(color: context.containerBG),
          height: 100.kh,
          child: Wrap(
            children: [
              Text(
                'INSTRUCTORS',
                style: TextStyleUtil.rubik500(fontSize: 14.kh),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CommonImageView(
                        imagePath: ImageConstant.pngQUAHALOGOFILLED,
                      ).paddingOnly(right: 14.kw),
                      Text(
                        'Quaha Future\nGames',
                        style: TextStyleUtil.rubik500(fontSize: 13.kh),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.right_chevron,
                        color: Colors.white,
                        size: 24.kw,
                      ))
                ],
              )
            ],
          ).paddingOnly(left: 24.kw, top: 16.kh, bottom: 16.kh),
        ),
      ],
    ),
    Text('Tab2'),
  ]);
}
