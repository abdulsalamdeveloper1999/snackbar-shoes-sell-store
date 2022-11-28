import 'package:get/get.dart';

import '../controllers/authentic_detail_controller.dart';

class AuthenticDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticDetailController>(
      () => AuthenticDetailController(),
    );
  }
}
