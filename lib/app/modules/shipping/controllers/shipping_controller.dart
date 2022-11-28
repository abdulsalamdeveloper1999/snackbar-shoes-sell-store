import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../signup/views/signup_view.dart';

class ShippingController extends GetxController {
  //TODO: Implement ShippingController
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController addressnameController = TextEditingController();
  TextEditingController citynameController = TextEditingController();
  TextEditingController statenameController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  var checkBoolZero = false.obs;
  var checkBoolOne = false.obs;

  var checkBool = false.obs;

  void changestatezero() {
    checkBoolZero.value = !checkBoolZero.value;
  }

  void changestateone() {
    checkBoolOne.value = !checkBoolOne.value;
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
    firstnameController.dispose();
    lastnameController.dispose();
    addressnameController.dispose();
    citynameController.dispose();
    statenameController.dispose();
    zipcodeController.dispose();
    phoneNumberController.dispose();
  }

  void increment() => count.value++;
}
