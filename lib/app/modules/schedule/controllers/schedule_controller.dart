import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ScheduleController extends GetxController {
  //TODO: Implement ScheduleController
  TextEditingController makeController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController concrensController = TextEditingController();

  var selectedShipment = ''.obs;

  void onChange(var shipment) {
    selectedShipment.value = shipment;
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
    makeController.dispose();
    modelController.dispose();
    concrensController.dispose();
  }

  void increment() => count.value++;
}
