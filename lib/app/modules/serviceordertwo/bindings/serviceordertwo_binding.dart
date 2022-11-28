import 'package:get/get.dart';

import '../controllers/serviceordertwo_controller.dart';

class ServiceordertwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceordertwoController>(
      () => ServiceordertwoController(),
    );
  }
}
