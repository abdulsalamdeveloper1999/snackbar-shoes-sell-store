import 'package:get/get.dart';

import '../controllers/passwordchanged_controller.dart';

class PasswordchangedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasswordchangedController>(
      () => PasswordchangedController(),
    );
  }
}
