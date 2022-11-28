import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotpasswordController extends GetxController {
  //TODO: Implement ForgotpasswordController
  TextEditingController emailControler = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

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
    emailControler.dispose();
  }

  void increment() => count.value++;
}
