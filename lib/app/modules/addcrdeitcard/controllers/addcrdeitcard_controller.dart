import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddcrdeitcardController extends GetxController {
  //TODO: Implement AddcrdeitcardController

  TextEditingController nameoncardController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cvcNumberController = TextEditingController();

  TextEditingController pickUpDateController = TextEditingController();

  DateTime dateTimeNow = DateTime.now();
  void onChange(DateTime newTime) {
    dateTimeNow = newTime;
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
    nameoncardController.dispose();
    cardNumberController.dispose();
    cvcNumberController.dispose();
    pickUpDateController.dispose();
  }

  void increment() => count.value++;
}
