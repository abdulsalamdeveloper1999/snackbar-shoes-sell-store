import 'package:get/get.dart';
import 'package:snackbar/app/modules/introduction/views/introduction_view.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(Duration(milliseconds: 800));
    Get.off(() => IntroductionView());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
