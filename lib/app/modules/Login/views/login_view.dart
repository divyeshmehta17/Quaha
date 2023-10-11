import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.asset(ImageConstant.pngQuahaLogo)),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign up Later',
                            style: TextStyleUtil.roboto500(fontSize: 16),
                          ))
                    ]),
                26.kheightBox,
                Text(
                  'Up Skill in 10 minutes',
                  style: TextStyleUtil.rubik500(fontSize: 24),
                ),
                Text(
                  'Gain access to the best courses, career and business insights. Do this all while having fun',
                  style: TextStyleUtil.rubik500(fontSize: 16),
                ).paddingSymmetric(vertical: 22.kh),
                QuahaTextField(
                  controller: controller.emailController,
                  prefixIcon: Image.asset(ImageConstant.pngMessage),
                  hintText: 'Email',
                  obscureText: false,
                  textStyle: TextStyleUtil.roboto400(fontSize: 14),
                ).paddingSymmetric(vertical: 16.kh),
                QuahaTextField(
                  controller: controller.passwordController,
                  prefixIcon: Image.asset(ImageConstant.pngLock),
                  hintText: 'Password',
                  obscureText: true,
                  textStyle: TextStyleUtil.roboto400(fontSize: 14),
                ),
                24.kheightBox,
                QuahaButton(
                  onpressed: () {},
                  label: 'Login',
                  labelStyle: TextStyleUtil.roboto400(fontSize: 14),
                ),
                20.kheightBox,
                Center(
                  child: TextButton(
                      onPressed: () {
                        Get.to(const SignupView());
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
            ).paddingSymmetric(horizontal: 16.kw, vertical: 16.kh),
          ),
        ));
  }
}
