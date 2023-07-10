import 'package:dinery_app/view/reset_screen/reset_controller.dart';
import 'package:get/get.dart';

class ResetBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<ResetController>(ResetController());
  }
}
