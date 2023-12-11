import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/Quaha_Button.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../../components/coinRow.dart';
import '../controllers/quizbranding_controller.dart';

class QuizbrandingView extends GetView<QuizbrandingController> {
  const QuizbrandingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Color> containerColor = [
      Color(0xFF5DF627),
      Color(0xFFFF5B7E),
      Color(0xFFC0C0C0)
    ];
    List<String> quizAnswer = ['Africology', 'Black Opal', 'Nubian Heritage'];
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            CustomCoinRowWidget().paddingOnly(top: 10.kh, bottom: 20.kh),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: const Icon(
                CupertinoIcons.xmark,
                color: Colors.white,
              ),
              leadingWidth: 5.kw,
              actions: const [Icon(Icons.share)],
              centerTitle: true,
              title: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  CommonImageView(
                    imagePath: ImageConstant.pngquoins,
                    height: 24.kh,
                  ),
                  Text(
                    '10',
                    style: TextStyleUtil.rubik500(fontSize: 14.kh),
                  )
                ],
              ),
            ),
            Container(
              height: 20.kh,
              decoration: BoxDecoration(
                  color: Color(0xFF1EB111),
                  borderRadius: BorderRadius.circular(50)),
            ).paddingOnly(bottom: 23.kh),
            CommonImageView(
              imagePath: ImageConstant.pngdummyquizimage,
            ).paddingOnly(bottom: 20.kh),
            Text(
              'Which African brand is known for its luxury skincare products?',
              style: TextStyleUtil.rubik500(fontSize: 18.kh),
            ),
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                padding: EdgeInsets.only(
                  top: 16.kh,
                ),
                itemBuilder: (context, int index) {
                  return Container(
                    height: 50.kh,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.kh),
                      border:
                          Border.all(width: 2.kw, color: containerColor[index]),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          quizAnswer[index],
                          style: TextStyleUtil.rubik500(fontSize: 18.kh),
                        ).paddingOnly(left: 10.kw),
                        // CircleAvatar(
                        //     backgroundColor: containerColor[index],
                        //     radius: 12.kw,
                        //     child: const Icon(
                        //       Icons.check,
                        //       size: 20,
                        //       color: Colors.black,
                        //     ))
                      ],
                    ),
                  ).paddingOnly(bottom: 24.kh, left: 58.kw, right: 58.kw);
                }),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.HINT);
              },
              child: Container(
                height: 50.kh,
                width: 154.kw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.kh),
                  color: Color(0xFFFF8600),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hint 10',
                      style: TextStyleUtil.rubik500(fontSize: 20.kh),
                    ),
                    CommonImageView(
                      imagePath: ImageConstant.pngquoins,
                      height: 24.kh,
                    ),
                  ],
                ),
              ).paddingOnly(bottom: 12.kh),
            ),
            QuahaButton(
                    onpressed: () {},
                    label: 'Continue',
                    labelStyle: TextStyleUtil.rubik600(fontSize: 14.kh))
                .paddingOnly(bottom: 17.kh)
          ],
        ).paddingOnly(left: 16.kh, right: 16.kh)),
      ),
    );
  }
}
