import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/quaha_app_bar.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../../../components/Quaha_Button.dart';
import '../../../components/common_image_view.dart';
import '../../../constants/image_constant.dart';
import '../../../services/text_style_util.dart';
import '../../profile/views/profile_view.dart';
import '../../searchscreen/views/searchscreen_view.dart';
import '../controllers/courseviewcontent_controller.dart';
import 'courviewcontenttabs.dart';

List<String> buttonName = [
  'Adobe Illustrator',
  'Typography',
  'Branding',
  'Contrast',
  'Branding'
];

class CourseviewcontentView extends GetView<CourseviewcontentController> {
  const CourseviewcontentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QuahaAppBar(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, isScrolled) {
            return [
              SliverToBoxAdapter(
                child: AboutCourse(),
              ),
              SliverToBoxAdapter(
                child: courseContentTabBar(),
              ),
            ];
          },
          body: const TabBarView(children: [
            LessonContents(),
            ReviewsList(),
          ]),
        ),
      ),
    );
  }
}

class LessonContents extends StatelessWidget {
  const LessonContents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Scaffold(
            body: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  if (index < 4) {
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
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Plant growth and theory',
                                      style: TextStyleUtil.rubik500(
                                          fontSize: 14.kh),
                                    ),
                                    Text(
                                      'Explore the importance of how to determine your niche before starting a Podcast.The future of podacasting is lucrative in the new modern sense of media and broadcasting with the evolution of AI this will indeed grow to be the future',
                                      style: TextStyleUtil.rubik400(
                                          fontSize: 12.kh),
                                    )
                                  ],
                                ),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      (index + 1).toString(),
                                      style: TextStyleUtil.rubik400(
                                          fontSize: 14.kh),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                .paddingOnly(
                                    left: 8.kw, right: 8.kw, bottom: 13.kh)
                          ],
                        ),
                      ],
                    ).paddingOnly(
                        bottom: 16.kh, top: 24.kh, left: 16.kw, right: 16.kw);
                  } else if (index == 4) {
                    // Red-colored container below the first item
                    return Column(
                      children: [
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CommonImageView(
                                        imagePath:
                                            ImageConstant.pngQUAHALOGOFILLED,
                                      ).paddingOnly(right: 14.kw),
                                      Text(
                                        'Quaha Future\nGames',
                                        style: TextStyleUtil.rubik500(
                                            fontSize: 13.kh),
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
                        ).paddingOnly(bottom: 36.kh),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle),
                                        child: CommonImageView(
                                          imagePath: ImageConstant.pngprofile,
                                          height: 40.kh,
                                          width: 40.kw,
                                        ).paddingAll(1.kw),
                                      ).paddingOnly(right: 14.kw),
                                      Text(
                                        'Edwin Strauss \nProject Director',
                                        style: TextStyleUtil.rubik500(
                                            fontSize: 13.kh),
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
                        ).paddingOnly(bottom: 36.kh),
                        Container(
                            decoration:
                                BoxDecoration(color: context.containerBG),
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Earn a Certificate',
                                    style:
                                        TextStyleUtil.rubik500(fontSize: 14.kh),
                                  ).paddingOnly(bottom: 32.kh),
                                  CommonImageView(
                                    imagePath: ImageConstant.png1stCertificate,
                                  ).paddingOnly(bottom: 20.kh),
                                  Text(
                                    'You can share your certificate on your CV, other documents and on your Social Media Profiles',
                                    style:
                                        TextStyleUtil.rubik400(fontSize: 12.kh),
                                  ),
                                ],
                              ).paddingAll(14.kh),
                            )).paddingOnly(bottom: 36.kh),
                        Container(
                            decoration:
                                BoxDecoration(color: context.containerBG),
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Earn a Badge',
                                    style:
                                        TextStyleUtil.rubik500(fontSize: 14.kh),
                                  ).paddingOnly(bottom: 46.kh),
                                  professionalBadgeContainer(),
                                  Text(
                                    'You can share your Badge on your CV, other documents and on your Social Media Profiles',
                                    style:
                                        TextStyleUtil.rubik400(fontSize: 12.kh),
                                  ).paddingOnly(top: 70.kh),
                                ],
                              ).paddingAll(14.kh),
                            )).paddingOnly(bottom: 36.kh),
                      ],
                    );
                  }
                  ;
                }),
          ),
        ),
      ],
    );
  }
}

class ReviewsList extends StatelessWidget {
  const ReviewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        padding: EdgeInsets.only(top: 33.kh),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    height: 40.kh,
                    width: 40.kh,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: CommonImageView(
                      imagePath: ImageConstant.pngprofile,
                    ).paddingAll(1.kw),
                  ).paddingOnly(right: 8.kw),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Robert Fox',
                          style: TextStyleUtil.rubik500(fontSize: 14.kh),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_border_purple500_rounded,
                              color: Colors.white,
                              size: 16.kh,
                            ),
                            Text(
                              '5.0',
                              style: TextStyleUtil.rubik500(fontSize: 12.kh),
                            )
                          ],
                        ),
                        Text(
                          '\“This was my first time taking a course in  this format and it far exceeded my expectations.\”',
                          style: TextStyleUtil.rubik500(fontSize: 12.kh),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.white,
                thickness: 1.kh,
                height: 16.kh,
              )
            ],
          ).paddingOnly(left: 16.kw, right: 16.kw);
        });
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  MyDelegate({required this.tabBar, required this.color});
  final TabBar tabBar;
  final Color color;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: color,
      child: Column(children: [tabBar]),
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class AboutCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(
        decoration: BoxDecoration(color: context.containerBG),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Basics of Starting a Podcast Certificate Program',
              style: TextStyleUtil.rubik500(fontSize: 20.kh),
            ).paddingOnly(left: 16.kw, bottom: 8.kh, top: 12.kh),
            Text(
              'Offered by',
              style: TextStyleUtil.rubik400(fontSize: 15.kh),
            ).paddingOnly(left: 16.kw, bottom: 8.kh),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.kw)),
              child: CommonImageView(
                imagePath: ImageConstant.pngQuahaLogo,
                height: 40.kh,
                width: 40.kh,
              ),
            ).paddingOnly(left: 16.kw, bottom: 18.kh),
          ],
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'About this Program',
                style: TextStyleUtil.rubik500(fontSize: 16.kh),
              ),
              Row(
                children: [
                  CommonImageView(
                    svgPath: ImageConstant.svgstar,
                  ),
                  Text(
                    '4.3',
                    style: TextStyleUtil.rubik500(fontSize: 12.kh),
                  ).paddingOnly(left: 8.kw, right: 3.kw),
                  Text(
                    '(175 Reviews)',
                    style: TextStyleUtil.rubik400(
                        fontSize: 12.kh, color: context.grey),
                  ).paddingOnly(right: 24.kw),
                  CommonImageView(
                    svgPath: ImageConstant.svgHeart,
                  ),
                ],
              ),
            ],
          ),
          Text(
            'Podcasting as a career involves creating and publishing audio content on a regular basis for an audience.\n\nWith dedication, hard work, and a unique perspective, you can build a loyal following and potentially monetize your podcast through sponsorships, merchandising, and other revenue streams..Read More',
            style: TextStyleUtil.rubik600(fontSize: 14.kh),
          ).paddingOnly(top: 8.kh),
          Row(
            children: [
              CommonImageView(
                svgPath: ImageConstant.svgClock,
                height: 19.kh,
                width: 19.kw,
              ),
              Text(
                '30min - 4 Lesson',
                style: TextStyleUtil.rubik500(fontSize: 14.kh),
              ).paddingOnly(left: 10.kw),
            ],
          ).paddingOnly(top: 16.kh, bottom: 12.kh),
          Row(
            children: [
              CommonImageView(
                imagePath: ImageConstant.pngquoins,
                height: 19.kh,
                width: 19.kw,
              ),
              Text(
                'Potentaily Earnings:  100 Quoins',
                style: TextStyleUtil.rubik500(fontSize: 14.kh),
              ).paddingOnly(left: 10.kw),
            ],
          ).paddingOnly(bottom: 12.kh),
          Row(
            children: [
              CommonImageView(
                svgPath: ImageConstant.svgvolume,
                height: 19.kh,
                width: 19.kw,
              ),
              Text(
                'Beginner Level',
                style: TextStyleUtil.rubik500(fontSize: 14.kh),
              ).paddingOnly(left: 8.kw),
            ],
          ).paddingOnly(bottom: 12.kh),
          Row(
            children: [
              CommonImageView(
                svgPath: ImageConstant.svgcertificateicon,
                height: 19.kh,
                width: 19.kw,
              ),
              Text(
                'Earn: Media Batch',
                style: TextStyleUtil.rubik500(fontSize: 14.kh),
              ).paddingOnly(left: 8.kw),
            ],
          ).paddingOnly(bottom: 12.kh),
          Row(
            children: [
              CommonImageView(
                svgPath: ImageConstant.svgcrown,
                height: 19.kh,
                width: 19.kw,
              ),
              Text(
                'Earn: 1 Crown',
                style: TextStyleUtil.rubik500(fontSize: 14.kh),
              ).paddingOnly(left: 8.kw),
            ],
          ).paddingOnly(bottom: 12.kh),
          Row(
            children: [
              CommonImageView(
                svgPath: ImageConstant.svgcertificateicon2,
                height: 19.kh,
                width: 19.kw,
              ),
              Text(
                'Earn: Certificate',
                style: TextStyleUtil.rubik500(fontSize: 14.kh),
              ).paddingOnly(left: 8.kw),
            ],
          ).paddingOnly(bottom: 16.kh),
          Divider(
            color: Colors.black.withOpacity(0.25),
            thickness: 1,
          ),
          Text(
            'Skills You Will Gain',
            style: TextStyleUtil.rubik500(fontSize: 20.kh),
          ).paddingOnly(top: 16.kh, bottom: 16.kh),
          QuahaGroupButtons(buttonName: buttonName).paddingOnly(bottom: 28.kh),
          QuahaButton(
              onpressed: () {},
              label: 'Start Virtual Insights',
              svgPath: ImageConstant.svglock,
              labelStyle: TextStyleUtil.roboto600(fontSize: 14.kh)),
        ],
      ).paddingOnly(left: 16.kw, right: 16.kw, top: 20.kh, bottom: 16.kh),
    ]);
  }
}
