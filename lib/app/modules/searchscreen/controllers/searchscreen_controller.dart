import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchscreenController extends GetxController {
  //TODO: Implement SearchscreenController
  final TextEditingController searchController = TextEditingController();
  final count = 0.obs;
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
  }

  void increment() => count.value++;
}
