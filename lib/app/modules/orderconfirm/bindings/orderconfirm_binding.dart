import 'package:get/get.dart';

import '../controllers/orderconfirm_controller.dart';

class OrderconfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderconfirmController>(
      () => OrderconfirmController(),
    );
  }
}
