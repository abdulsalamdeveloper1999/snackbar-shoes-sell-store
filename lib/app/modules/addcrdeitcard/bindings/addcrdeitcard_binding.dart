import 'package:get/get.dart';

import '../controllers/addcrdeitcard_controller.dart';

class AddcrdeitcardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddcrdeitcardController>(
      () => AddcrdeitcardController(),
    );
  }
}
