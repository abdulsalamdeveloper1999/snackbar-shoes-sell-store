import 'package:get/get.dart';

import '../controllers/great_controller.dart';

class GreatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GreatController>(
      () => GreatController(),
    );
  }
}
