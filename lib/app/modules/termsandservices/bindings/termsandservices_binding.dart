import 'package:get/get.dart';

import '../controllers/termsandservices_controller.dart';

class TermsandservicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermsandservicesController>(
      () => TermsandservicesController(),
    );
  }
}
