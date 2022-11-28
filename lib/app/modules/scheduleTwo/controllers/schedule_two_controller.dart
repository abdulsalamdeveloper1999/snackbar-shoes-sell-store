import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ScheduleTwoController extends GetxController {
  //TODO: Implement ScheduleTwoController

  TextEditingController pickTimeController = TextEditingController();
  TextEditingController pickUpDateController = TextEditingController();
  TextEditingController deliveryDateController = TextEditingController();
  TextEditingController deliveryTimeController = TextEditingController();

  DateTime dateTime = DateTime.now();
  DateTime time = DateTime.now();
  var dateTimeNow = DateTime.now();

  var selectedIndex = -1;
  var selectedIndexTwo = -1;

  var getHintText = '12am-10am';
  var hintGetText = '8am-9am';

  List<String> timeSlots = [
    '08 AM - 09 AM',
    '09 AM - 10 AM',
    '10 AM - 11 AM',
    '11 AM - 12 PM',
    '12 PM - 01 PM',
    '02 PM - 03 PM',
    '03 PM - 04 PM',
    '04 PM - 05 PM'
  ];

  void changehintTextColorTwo(var index) {
    getHintText = timeSlots[index];
    update();
  }

  void changeContainerColor(var index) {
    selectedIndex = index;
    update();
  }

  void changehintTextColor(var index) {
    hintGetText = timeSlots[index];
    update();
  }

  void onChange(DateTime newTime) {
    dateTimeNow = newTime;
    update();
  }

  void onChangeTwo(DateTime newTime) {
    dateTime = newTime;
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
    pickUpDateController.dispose();
    deliveryDateController.dispose();
    pickTimeController.dispose();
    deliveryTimeController.dispose();
  }

  void increment() => count.value++;
}
