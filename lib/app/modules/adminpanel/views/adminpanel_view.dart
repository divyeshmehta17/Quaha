import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/modules/adminpanel/controllers/adminpanel_controller.dart';
import 'package:quaha/app/services/colors.dart';

import '../../../routes/app_pages.dart';
import '../../../services/storage.dart';
import 'AdminPanelButton.dart';

class AdminPanelView extends GetView<AdminpanelController> {
  const AdminPanelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AdminPanelView'),
          centerTitle: true,
          backgroundColor: context.brandColor1,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AdminPanelButton(
                  label: 'Splash',
                  onPressed: () => Get.toNamed(Routes.SPLASH),
                ),
                AdminPanelButton(
                  label: 'Login',
                  onPressed: () => Get.toNamed(Routes.LOGIN),
                ),
                AdminPanelButton(
                  label: 'SIGNUP',
                  onPressed: () => Get.toNamed(Routes.SIGNUP),
                ),
                AdminPanelButton(
                  label: 'HOMESCREEN',
                  onPressed: () => Get.toNamed(Routes.HOMESCREEN),
                ),
                AdminPanelButton(
                  label: 'DISCOVERALLCONTENT',
                  onPressed: () => Get.toNamed(Routes.DISCOVERALLCONTENT),
                ),
                AdminPanelButton(
                  label: 'CATEGORIES',
                  onPressed: () => Get.toNamed(Routes.CATEGORIES),
                ),
                AdminPanelButton(
                  label: 'EXCITINGQUIZESSEEALL ',
                  onPressed: () => Get.toNamed(Routes.EXCITINGQUIZESSEEALL),
                ),
                AdminPanelButton(
                  label: 'PROFILE ',
                  onPressed: () => Get.toNamed(Routes.PROFILE),
                ),
                AdminPanelButton(
                  label: 'VISCREEN ',
                  onPressed: () => Get.toNamed(Routes.VISCREEN),
                ),
                AdminPanelButton(
                  label: 'COURSESSCREEN ',
                  onPressed: () => Get.toNamed(Routes.COURSESSCREEN),
                ),
                AdminPanelButton(
                  label: 'COURSEVIEWCONTENT ',
                  onPressed: () => Get.toNamed(Routes.COURSEVIEWCONTENT),
                ),
                AdminPanelButton(
                  label: 'REWARDSANDBADGES ',
                  onPressed: () => Get.toNamed(Routes.REWARDSANDBADGES),
                ),
                AdminPanelButton(
                  label: 'Log Out',
                  onPressed: () => Get.find<GetStorageService>().logout(),
                ),
              ],
            ),
          ),
        ));
  }
}
