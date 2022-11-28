import 'package:get/get.dart';

import '../controllers/schedule_two_controller.dart';

class ScheduleTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScheduleTwoController>(
      () => ScheduleTwoController(),
    );
  }
}
