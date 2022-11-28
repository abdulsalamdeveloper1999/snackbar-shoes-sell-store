import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangepasswordController extends GetxController {
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();
  //TODO: Implement ChangepasswordController

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
    passController.dispose();
    confirmpassController.dispose();
  }

  void increment() => count.value++;
}
