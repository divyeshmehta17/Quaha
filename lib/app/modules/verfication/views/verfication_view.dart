import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:quaha/app/components/Quaha_Button.dart';
import 'package:quaha/app/constants/image_constant.dart';
import 'package:quaha/app/modules/details1/views/details1_view.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';
import 'package:quaha/app/services/text_style_util.dart';

import '../../../components/quaha_app_bar.dart';
import '../controllers/verfication_controller.dart';

class VerficationView extends GetView<VerficationController> {
  const VerficationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.brandColor1,
        appBar: QuahaAppBar(
            title: Text('VERIFICATION'),
            textStyle: TextStyleUtil.rubik500(fontSize: 21),
            centerTitle: true,
            color: context.brandColor1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Image.asset(ImageConstant.pngzebra),
              ).paddingOnly(top: 68.kh),
              Text(
                'Enter the verification code we just sent you on your email address.',
                textAlign: TextAlign.center,
                style: TextStyleUtil.roboto400(fontSize: 20.kh),
              ).paddingOnly(top: 32.kh),
              OTPTextField(
                length: 4,
                style: TextStyle(fontSize: 17, color: Colors.white),
                isDense: true,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                otpFieldStyle: OtpFieldStyle(
                    borderColor: Colors.white,
                    disabledBorderColor: Colors.white,
                    enabledBorderColor: Colors.white,
                    errorBorderColor: Colors.red,
                    focusBorderColor: Colors.white),
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ).paddingOnly(
                  left: 64.kw, right: 64.kw, top: 80.kh, bottom: 32.kh),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'If you didn’t receive a code?',
                    textAlign: TextAlign.center,
                    style: TextStyleUtil.roboto400(fontSize: 17.kh),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend',
                        textAlign: TextAlign.center,
                        style: TextStyleUtil.roboto500(fontSize: 17.kh),
                      )),
                ],
              ).paddingOnly(bottom: 75.kh),
              QuahaButton(
                  onpressed: () {
                    Get.offAll(Details1View());
                  },
                  label: 'Register',
                  labelStyle: TextStyleUtil.roboto600(fontSize: 14)),
            ],
          ).paddingSymmetric(horizontal: 16.kw, vertical: 16.kh),
        ));
  }
}
