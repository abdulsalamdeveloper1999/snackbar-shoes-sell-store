import 'package:get/get.dart';

class ServiceController extends GetxController {
  //TODO: Implement ServiceController

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
  void decrement() {
    if (count != 0) {
      count.value--;
    } else {
      count == 0;
    }
  }
}
