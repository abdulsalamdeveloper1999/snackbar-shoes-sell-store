import 'package:get/get.dart';

class AuthenticDetailController extends GetxController {
  //TODO: Implement AuthenticDetailController

  var selectedIndex = 0;

  void onChange(index) {
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
