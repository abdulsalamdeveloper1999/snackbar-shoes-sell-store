import 'package:get/get.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  RxBool on = false.obs; // our observable

  // swap true/false & save it to observable
  void toggle() => on.value = on.value ? false : true;

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
