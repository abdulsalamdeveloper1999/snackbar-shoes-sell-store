import 'package:get/get.dart';

import '../controllers/orderplacedsuccessfully_controller.dart';

class OrderplacedsuccessfullyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderplacedsuccessfullyController>(
      () => OrderplacedsuccessfullyController(),
    );
  }
}
