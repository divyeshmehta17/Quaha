import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/Login/views/login_view.dart';
import 'package:quaha/app/modules/verfication/views/verfication_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../components/Quaha_Button.dart';
import '../../../components/Quaha_Text_Field.dart';
import '../../../components/socialmedialoginrow.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignupController());
    return Scaffold(
        backgroundColor: context.brandColor1,
        body: Form(
          key: controller.formKey,
          child: SafeArea(
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
                        25.kheightBox,
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign up Later',
                              style: TextStyleUtil.roboto500(fontSize: 16),
                            ))
                      ]),
                  25.kheightBox,
                  Text(
                    'Create Account',
                    style: TextStyleUtil.rubik500(fontSize: 24),
                  ),
                  8.kheightBox,
                  Text(
                    'Get Free access to the courses platform, with unlimited users & all the features!',
                    style: TextStyleUtil.rubik400(fontSize: 16),
                  ),
                  20.kheightBox,
                  QuahaTextField(
                    validator: (value) => controller.nameValidator(value),
                    controller: controller.nameController,
                    prefixIcon: Image.asset(ImageConstant.pngperson),
                    hintText: 'Full Name',
                    obscureText: true,
                    textStyle: TextStyleUtil.roboto400(fontSize: 14),
                  ),
                  16.kheightBox,
                  QuahaTextField(
                    validator: (value) => controller.emailValidator(value),
                    controller: controller.emailController,
                    prefixIcon: Image.asset(ImageConstant.pngMessage),
                    hintText: 'Email',
                    obscureText: false,
                    textStyle: TextStyleUtil.roboto400(fontSize: 14),
                  ),
                  16.kheightBox,
                  QuahaTextField(
                    validator: (value) => controller.passwordValidator(value),
                    controller: controller.passwordController,
                    prefixIcon: Image.asset(ImageConstant.pngLock),
                    hintText: 'Password',
                    obscureText: true,
                    textStyle: TextStyleUtil.roboto400(fontSize: 14),
                  ),
                  16.kheightBox,
                  QuahaTextField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Phone Number';
                      }
                      return null;
                    },
                    controller: controller.phoneController,
                    textInputType: const TextInputType.numberWithOptions(),
                    prefixIcon: Image.asset(ImageConstant.pngcall),
                    hintText: 'Phone Number',
                    obscureText: true,
                    textStyle: TextStyleUtil.roboto400(fontSize: 14),
                  ),
                  24.kheightBox,
                  QuahaButton(
                    onpressed: () {
                      //if (controller.formKey.currentState!.validate())
                      {
                        Get.off(VerficationView());
                      }
                    },
                    label: 'Register Now',
                    labelStyle: TextStyleUtil.roboto400(fontSize: 14),
                  ),
                  24.kheightBox,
                  Center(
                    child: TextButton(
                        onPressed: () {
                          Get.to(const LoginView());
                        },
                        child: Text(
                          'Already have an account? Login',
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
                  32.kheightBox,
                  const SocialMediaLoginRow()
                      .paddingSymmetric(horizontal: 52.kw, vertical: 44.kh),
                ],
              ).paddingSymmetric(horizontal: 16.kw, vertical: 16.kh),
            ),
          ),
        ));
  }
}
