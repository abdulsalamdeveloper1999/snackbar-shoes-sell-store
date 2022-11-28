import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CardPaymentController extends GetxController {
  //TODO: Implement CardPaymentController
  TextEditingController nameonCardController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController cvcController = TextEditingController();

  var checkBoolZero = false.obs;
  var checkBoolOne = false.obs;

  var checkBool = false.obs;

  void changestatezero() {
    checkBoolZero.value = !checkBoolZero.value;
  }

  void changestateone() {
    checkBoolOne.value = !checkBoolOne.value;
  }

  void dobChanged(DateTime? date) {
    if (date != null) {
      dobController.text = date.toString().split(' ')[0];
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
    nameonCardController.dispose();
    cardNumberController.dispose();
    dobController.dispose();
    cvcController.dispose();
  }

  void increment() => count.value++;
}
