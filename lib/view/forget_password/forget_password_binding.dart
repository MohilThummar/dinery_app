import 'package:dinery_app/view/forget_password/forget_password_controler.dart';
import 'package:get/get.dart';

class ForgetPasswordBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<ForgetPasswordController>(ForgetPasswordController());
  }
}
