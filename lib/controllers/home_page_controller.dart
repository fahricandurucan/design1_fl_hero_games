import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final pageNo = 0.obs;
  final Rx<PageController> pageController = PageController().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageController.value = PageController(initialPage: 0);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    pageController.value.dispose;
  }
}
