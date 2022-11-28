import 'package:get/get.dart';

import '../controllers/makearequest_controller.dart';

class MakearequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MakearequestController>(
      () => MakearequestController(),
    );
  }
}
