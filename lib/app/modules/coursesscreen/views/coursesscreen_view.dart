import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/coursesscreen_controller.dart';

class CoursesscreenView extends GetView<CoursesscreenController> {
  const CoursesscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'CoursesscreenView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
