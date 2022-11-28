import 'package:get/get.dart';

class AuthenticController extends GetxController {
  //TODO: Implement AuthenticController

  var selectedIndex = -1;

  final count = 0.obs;

  void change(var index) {
    selectedIndex = index;
    update();
  }

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
