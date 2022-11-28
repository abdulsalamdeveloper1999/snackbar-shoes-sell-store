import 'package:get/get.dart';

import '../controllers/serviceorderdetails_controller.dart';

class ServiceorderdetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceorderdetailsController>(
      () => ServiceorderdetailsController(),
    );
  }
}
