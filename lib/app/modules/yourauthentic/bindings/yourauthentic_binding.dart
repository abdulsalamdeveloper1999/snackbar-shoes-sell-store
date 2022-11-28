import 'package:get/get.dart';

import '../controllers/yourauthentic_controller.dart';

class YourauthenticBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourauthenticController>(
      () => YourauthenticController(),
    );
  }
}
