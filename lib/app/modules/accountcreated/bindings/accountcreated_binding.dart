import 'package:get/get.dart';

import '../controllers/accountcreated_controller.dart';

class AccountcreatedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountcreatedController>(
      () => AccountcreatedController(),
    );
  }
}
