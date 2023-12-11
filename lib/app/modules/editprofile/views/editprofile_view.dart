import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/Quaha_Button.dart';
import 'package:quaha/app/components/Quaha_Text_Field.dart';
import 'package:quaha/app/modules/profile/views/profile_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../controllers/editprofile_controller.dart';

class EditprofileView extends GetView<EditprofileController> {
  const EditprofileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => EditprofileController());
    return Scaffold(
      backgroundColor: context.brandColor1,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Text(
                'Profile',
                style: TextStyleUtil.roboto700(fontSize: 17),
              ),
            ),
            Center(
              child: CircleAvatar(
                radius: 64.kw,
                backgroundColor: Colors.white,
              ),
            ).paddingOnly(top: 32.kh),
            Text(
              'Personal Information',
              style: TextStyleUtil.roboto500(fontSize: 20.kh),
            ).paddingOnly(top: 48.kh, bottom: 16.kh),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF2A2C45),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyleUtil.roboto400(fontSize: 14.kh),
                  ).paddingOnly(bottom: 8.kh),
                  QuahaTextField(
                          controller: controller.nameController,
                          hintText: 'Name',
                          obscureText: false,
                          textStyle: TextStyleUtil.roboto400(fontSize: 14),
                          readonly: false)
                      .paddingOnly(bottom: 16.kh),
                  Text(
                    'Email',
                    style: TextStyleUtil.roboto400(fontSize: 14.kh),
                  ).paddingOnly(bottom: 8.kh),
                  QuahaTextField(
                          controller: controller.emailController,
                          hintText: 'abc@gmail.com',
                          obscureText: false,
                          textStyle: TextStyleUtil.roboto400(fontSize: 14),
                          readonly: false)
                      .paddingOnly(bottom: 16.kh),
                  Text(
                    'Phone',
                    style: TextStyleUtil.roboto400(fontSize: 14.kh),
                  ).paddingOnly(bottom: 8.kh),
                  QuahaTextField(
                          controller: controller.phoneController,
                          hintText: '+91 123456789',
                          obscureText: false,
                          textStyle: TextStyleUtil.roboto400(fontSize: 14),
                          textInputType: TextInputType.numberWithOptions(),
                          readonly: false)
                      .paddingOnly(bottom: 16.kh),
                ],
              ).paddingSymmetric(vertical: 26.kh, horizontal: 16.kw),
            ),
            QuahaButton(
                    onpressed: () {
                      Get.off(ProfileView(), transition: Transition.downToUp);
                    },
                    label: 'Save Changes',
                    labelStyle: TextStyleUtil.roboto400(fontSize: 14.kh))
                .paddingOnly(top: 30.kh),
          ],
        ).paddingSymmetric(horizontal: 16.kw, vertical: 16.kh),
      )),
    );
  }
}
