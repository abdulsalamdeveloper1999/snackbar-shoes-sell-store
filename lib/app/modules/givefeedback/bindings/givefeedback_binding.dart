import 'package:get/get.dart';

import '../controllers/givefeedback_controller.dart';

class GivefeedbackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GivefeedbackController>(
      () => GivefeedbackController(),
    );
  }
}
