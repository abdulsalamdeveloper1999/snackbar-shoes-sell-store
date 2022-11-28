import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController email1Controller = TextEditingController();
  TextEditingController email2Controller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onDispose() {
    super.dispose();
    email1Controller.dispose();
    email2Controller.dispose();
    passwordController.dispose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
