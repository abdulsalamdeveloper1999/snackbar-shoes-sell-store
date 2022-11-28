import 'package:get/get.dart';

class MywalletController extends GetxController {
  //TODO: Implement MywalletController

  var selectedIndex = -1;

  void changeBorderColor(var index) {
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
  void onClose() {}
  void increment() => count.value++;
}
