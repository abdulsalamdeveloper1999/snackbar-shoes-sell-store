import 'package:get/get.dart';

class ProductdetailController extends GetxController {
  //TODO: Implement ProductdetailController

  final count = 0.obs;

  var checkBool = false.obs;
  var pressed = true.obs;

  var selectedIndex = 0;

  void changeIndicator(index) {
    selectedIndex = index;
    update();
  }

  void onChange() {
    pressed.value = !pressed.value;
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
  void decrement() {
    if (count != 0) {
      count.value--;
    } else {
      count == 0;
    }
  }
}
