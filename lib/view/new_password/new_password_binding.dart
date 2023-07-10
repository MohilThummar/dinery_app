import 'package:dinery_app/view/new_password/new_password_controller.dart';
import 'package:get/get.dart';

class NewPasswordBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<NewPasswordController>(NewPasswordController());
  }
}
