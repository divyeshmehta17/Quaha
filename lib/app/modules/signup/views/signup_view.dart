import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/BottomNavigationBar/views/BottomNavigationBar.dart';
import 'package:quaha/app/modules/Login/views/login_view.dart';
import 'package:quaha/app/routes/app_pages.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../components/Quaha_Button.dart';
import '../../../components/Quaha_Text_Field.dart';
import '../../../components/common_image_view.dart';
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: 'test',
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 48.kh,
                                  width: 48.kw,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(8.kh)),
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
                                      style: TextStyleUtil.rubik500(
                                          fontSize: 16.kh),
                                    ))
                              ],
                            ),
                            Text(
                              'Create Account',
                              style: TextStyleUtil.rubik500(fontSize: 24),
                            ).paddingOnly(top: 16.kh),
                            Text(
                              'Get Free access to the courses platform, with unlimited users & all the features!',
                              style: TextStyleUtil.rubik500(fontSize: 16),
                            ).paddingSymmetric(vertical: 22.kh),
                          ],
                        ),
                      ),
                    ],
                  ),
                  QuahaTextField(
                    readonly: false,
                    validator: (value) => controller.nameValidator(value),
                    controller: controller.nameController,
                    prefixIcon: Image.asset(ImageConstant.pngperson),
                    hintText: 'Full Name',
                    obscureText: false,
                    textStyle: TextStyleUtil.roboto400(
                      fontSize: 14,
                    ),
                  ),
                  16.kheightBox,
                  QuahaTextField(
                    readonly: false,
                    validator: (value) => controller.emailValidator(value),
                    controller: controller.emailController,
                    prefixIcon: Image.asset(ImageConstant.pngMessage),
                    hintText: 'Email',
                    obscureText: false,
                    textStyle: TextStyleUtil.roboto400(fontSize: 14),
                  ),
                  16.kheightBox,
                  QuahaTextField(
                    readonly: false,
                    validator: (value) => controller.passwordValidator(value),
                    controller: controller.passwordController,
                    prefixIcon: Image.asset(ImageConstant.pngLock),
                    hintText: 'Password',
                    obscureText: true,
                    textStyle: TextStyleUtil.roboto400(fontSize: 14),
                  ),
                  16.kheightBox,
                  QuahaTextField(
                    readonly: false,
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
                    obscureText: false,
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
                                style: TextStyleUtil.rubik700(fontSize: 14.kh),
                              )
                            ])),
                      ),
                    ],
                  ),
                  24.kheightBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      QuahaButton(
                        onpressed: () {
                          //if (controller.formKey.currentState!.validate())
                          {
                            Get.to(QuahaBottomBar());
                          }
                        },
                        label: 'Register Now',
                        labelStyle: TextStyleUtil.roboto400(fontSize: 14),
                      ).paddingOnly(bottom: 24.kh),
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
                      // AdminPanelButton(
                      //     label: 'Admin Panel',
                      //     onPressed: () {
                      //       Get.toNamed(Routes.ADMINPANEL);
                      //     }),
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
                      ).paddingOnly(top: 32.kh),
                      const SocialMediaLoginRow()
                          .paddingSymmetric(horizontal: 52.kw, vertical: 44.kh),
                    ],
                  ),
                ],
              ).paddingSymmetric(horizontal: 16.kw, vertical: 43.kh),
            ),
          ),
        ));
  }
}
