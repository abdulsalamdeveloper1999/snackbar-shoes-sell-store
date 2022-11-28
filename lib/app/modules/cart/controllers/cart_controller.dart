import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  //TODO: Implement CartController
  TextEditingController promoController = TextEditingController();

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
  void onDispose() {
    promoController.dispose();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
  void decrement() {
    if (count != 0) {
      count.value--;
    } else {
      count == 0;
    }
  }
}
