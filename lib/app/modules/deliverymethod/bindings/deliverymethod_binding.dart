import 'package:get/get.dart';

import '../controllers/deliverymethod_controller.dart';

class DeliverymethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeliverymethodController>(
      () => DeliverymethodController(),
    );
  }
}
