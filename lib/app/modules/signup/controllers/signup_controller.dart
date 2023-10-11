import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.clear();
    phoneController.clear();
    nameController.clear();
    phoneController.clear();
  }

  nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter email';
    } else if (!value.isEmail) {
      return "enter a valid email";
    }
  }

  emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter email';
    } else if (!value.isEmail) {
      return "enter a valid email";
    }
  }

  passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter password';
    } else if (value.length < 8) {
      return "enter atleast 8 characters";
    } else if (!RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(value)) {
      return 'Minimum 1 Upper and lowercase case,\n Numeric Number and Special Character.\nCommon Allow Character ( ! @ # \$ & * ~ )';
    }
  }

  phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter email';
    } else if (!value.isEmail) {
      return "enter a valid email";
    }
  }
}
