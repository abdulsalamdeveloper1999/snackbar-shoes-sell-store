import 'package:get/get.dart';

import '../controllers/authentic_controller.dart';

class AuthenticBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticController>(
      () => AuthenticController(),
    );
  }
}
