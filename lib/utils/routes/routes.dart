import 'package:dinery_app/view/splash/splash_binding.dart';
import 'package:dinery_app/view/splash/splash_screen.dart';
import 'package:dinery_app/utils/routes/routes_name.dart';
import 'package:get/get.dart';

class Routs {
  static List<GetPage> page = [
    GetPage(name: splashRoutes, page: () => const SplashScreen(), binding: SplashBinding()),
  ];
}
