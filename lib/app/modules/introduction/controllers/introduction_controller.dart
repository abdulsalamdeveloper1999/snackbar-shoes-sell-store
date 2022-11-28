import 'package:get/get.dart';

class IntroductionController extends GetxController {
  final count = 0.obs;

  var selectedIndex = 0;

  void changeIndicator(var index) {
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
