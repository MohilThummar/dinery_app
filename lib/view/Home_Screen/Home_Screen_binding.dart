import 'package:dinery_app/view/Home_Screen/Home_Screen_Controller.dart';
import 'package:get/get.dart';

class HomeScreenBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<HomeScreenController>(HomeScreenController());
  }
}
