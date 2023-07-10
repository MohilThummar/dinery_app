import 'package:dinery_app/view/check_email/check_mail_controler.dart';
import 'package:get/get.dart';

class CheckMailBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<CheckMailController>(CheckMailController());
  }
}
