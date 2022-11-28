import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MakearequestController extends GetxController {
  //TODO: Implement MakearequestController
  TextEditingController remarksController = TextEditingController();

  var selectedIndex = -1;

  void onchange(index) {
    selectedIndex = index;
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
  void onDispose() {
    remarksController.dispose();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
