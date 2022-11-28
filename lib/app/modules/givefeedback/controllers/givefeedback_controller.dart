import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GivefeedbackController extends GetxController {
  TextEditingController reviewController = TextEditingController();

  var click = false;

  void changeColor() {
    click = !click;
    if (click) {
      Colors.grey;
    } else {
      Color(0xffFFC000);
    }
    update();
  }

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
    reviewController.dispose();
  }

  void increment() => count.value++;
}
