import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/viscreen_controller.dart';

class ViscreenView extends GetView<ViscreenController> {
  const ViscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'ViscreenView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
