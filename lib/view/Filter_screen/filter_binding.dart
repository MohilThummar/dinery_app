import 'package:dinery_app/view/Filter_screen/filter_controller.dart';
import 'package:get/get.dart';

class FilterScreenBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<FilterScreenController>(FilterScreenController());
  }
}
