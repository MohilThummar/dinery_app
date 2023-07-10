import 'package:carousel_slider/carousel_slider.dart';
import 'package:dinery_app/res/common/app_button.dart';
import 'package:dinery_app/utils/routes/routes_name.dart';
import 'package:dinery_app/view/on_boarding/on_boarding_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../res/constant/app_strings.dart';

class OnBoardingScreen extends GetView<OnBoardingController> {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.toNamed(welcomeRoutes);
                  },
                  child: const Text('Skip'),
                ),
                100.verticalSpace,
              ],
            ),
            60.verticalSpace,
            CarouselSlider.builder(
              itemCount: controller.items.length,
              carouselController: controller.buttonCarouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: false,
                reverse: false,
                viewportFraction: 1.0,
                height: 300.h,
                enlargeCenterPage: false,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  controller.currentPositionIndex!.value = index.toDouble();
                },
              ),
              itemBuilder: (context, i, id) {
                return Column(
                  children: [
                    Image.asset(
                      controller.items[i]['image'],
                      width: 222.h,
                      height: 155.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 20).r,
                      child: Text(
                        controller.items[i]['title'],
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                      controller.items[i]['subtitle'],
                      style: TextStyle(
                        fontSize: 17.5.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.items.length,
                (index) => Obx(() {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5).r,
                    width: 20.h,
                    height: 3.5.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: controller.currentPositionIndex!.value.round() == index ? const Color(0xFFBA4723) : Colors.grey,
                    ),
                  );
                }),
              ),
            ),
            25.verticalSpace,
            AppButton(
              title: AppStrings.next,
              onPressed: () {
                if (controller.currentPositionIndex!.value != 2) {
                  controller.buttonCarouselController.nextPage();
                } else {
                  Get.toNamed(welcomeRoutes);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
