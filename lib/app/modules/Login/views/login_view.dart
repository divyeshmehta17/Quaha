import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/components/common_image_view.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../components/Quaha_Button.dart';
import '../../../components/Quaha_Text_Field.dart';
import '../../../components/socialmedialoginrow.dart';
import '../../signup/views/signup_view.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LoginController());
    return Scaffold(
        backgroundColor: context.brandColor1,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 48.kh,
                      width: 48.kw,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.kh)),
                      child: CommonImageView(
                        imagePath: ImageConstant.pngQuahaLogo,
                      ).paddingAll(10.kw),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.BOTTOMNAVBAR);
                        },
                        child: Text(
                          'Sign up Later',
                          style: TextStyleUtil.rubik500(fontSize: 16.kh),
                        ))
                  ],
                ),
                Text(
                  'Up Skill in 10 minutes',
                  style: TextStyleUtil.rubik500(fontSize: 24),
                ).paddingOnly(top: 29.kh),
                Text(
                  'Gain access to the best courses, career and business insights.Do this all while having fun.',
                  style: TextStyleUtil.rubik500(fontSize: 16),
                ).paddingOnly(top: 6.kh, bottom: 22.kh),
                QuahaTextField(
                  readonly: false,
                  controller: controller.emailController,
                  prefixIcon: Image.asset(ImageConstant.pngMessage),
                  hintText: 'Email',
                  obscureText: false,
                  textStyle: TextStyleUtil.roboto400(fontSize: 14),
                ).paddingSymmetric(vertical: 16.kh),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    QuahaTextField(
                      readonly: false,
                      controller: controller.passwordController,
                      prefixIcon: Image.asset(ImageConstant.pngLock),
                      hintText: 'Password',
                      obscureText: true,
                      textStyle: TextStyleUtil.roboto400(fontSize: 14),
                    ),
                    24.kheightBox,
                    Row(
                      children: [
                        Obx(
                          () => Checkbox(
                              side: BorderSide(color: context.containerBG),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.kw),
                              ),
                              value: controller.isChecked.value,
                              onChanged: (value) {
                                controller.isChecked.value = value!;
                              }),
                        ),
                        Expanded(
                          child: Text.rich(TextSpan(
                              text: 'Agree to our ',
                              style: TextStyleUtil.rubik500(fontSize: 14.kh),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: 'terms and condition & privacy policy',
                                  style:
                                      TextStyleUtil.rubik700(fontSize: 14.kh),
                                )
                              ])),
                        ),
                      ],
                    ),
                    24.kheightBox,
                    QuahaButton(
                      onpressed: () {
                        Get.toNamed(Routes.BOTTOMNAVBAR);
                      },
                      label: 'Login',
                      labelStyle: TextStyleUtil.roboto400(fontSize: 14),
                    ).paddingOnly(bottom: 24.kh),
                    Center(
                      child: TextButton(
                          onPressed: () {
                            Get.to(const SignupView(),
                                duration: Duration(seconds: 1));
                          },
                          child: Text(
                            'Don’t have an account? Register',
                            style: TextStyleUtil.roboto500(fontSize: 16),
                          )),
                    ),
                    32.kheightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 1.kh,
                          width: 140.kw,
                          color: Colors.white,
                        ),
                        Text(
                          'or',
                          style: TextStyleUtil.roboto400(fontSize: 17),
                        ),
                        Container(
                          height: 1.kh,
                          width: 140.kw,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SocialMediaLoginRow()
                        .paddingSymmetric(horizontal: 52.kw, vertical: 44.kh),
                  ],
                ),
              ],
            ).paddingSymmetric(horizontal: 16.kw, vertical: 28.kh),
          ),
        ));
  }
}
