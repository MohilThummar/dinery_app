import 'package:dinery_app/view/log_in/log_in_controler.dart';
import 'package:get/get.dart';

class LogInBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<LogInController>(LogInController());
  }
}
