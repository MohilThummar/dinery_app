import 'package:carousel_slider/carousel_controller.dart';
import 'package:dinery_app/res/constant/app_strings.dart';
import 'package:get/get.dart';

import '../../res/constant/app_assets.dart';

class OnBoardingController extends GetxController {
  RxDouble? currentPositionIndex = 0.0.obs;

  CarouselController buttonCarouselController = CarouselController();

  final List<Map<String, dynamic>> items = [
    {
      'image': AppAssets.restaurant,
      'title': AppStrings.findRestaurant,
      'subtitle': AppStrings.search,
    },
    {
      'image': AppAssets.reservation,
      'title': AppStrings.reservation,
      'subtitle': AppStrings.reserveTable,
    },
    {
      'image': AppAssets.meals,
      'title': AppStrings.preOrderMeals,
      'subtitle': AppStrings.orderMeals,
    },
  ];
}
