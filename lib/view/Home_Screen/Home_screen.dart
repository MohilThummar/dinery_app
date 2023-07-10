import 'package:dinery_app/res/constant/app_assets.dart';
import 'package:dinery_app/res/constant/app_strings.dart';
import 'package:dinery_app/view/Home_Screen/Home_Screen_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          AppStrings.exploreRestaurants,
          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700),
        ),
        automaticallyImplyLeading: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.notifications_none_outlined, size: 30),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 273.w,
                height: 48.h,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFFF3F1F1)),
                child: Row(
                  children: [
                    13.horizontalSpace,
                    const Icon(
                      Icons.search_outlined,
                      size: 35,
                    ),
                    15.horizontalSpace,
                    Text(
                      AppStrings.searchRestaurant,
                      style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                width: 44.w,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF3F1F1),
                ),
                child: const Icon(
                  Icons.tune,
                  size: 35,
                ),
              ),
            ],
          ),
          30.verticalSpace,
          SizedBox(
            height: 200.h,
            child: Padding(
              padding: const EdgeInsets.only(left: 18).r,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                separatorBuilder: (context, index) => const SizedBox(width: 15),
                itemBuilder: (context, index) => Container(
                  height: 110.h,
                  width: 236.w,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        AppAssets.hotel,
                        height: 110.h,
                        width: 236.w,
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10).r,
                            child: Text(
                              AppStrings.parallel37,
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              AppAssets.star,
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                          Text(
                            AppStrings.star,
                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5).r,
                            child: const Icon(Icons.location_on_outlined),
                          ),
                          Text(
                            AppStrings.ikoyi,
                            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10).r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.recommended,
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800),
                ),
                RichText(
                  text: TextSpan(
                    text: AppStrings.seeAll,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: const Color(0xFFBA4723),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15).r,
            child: SizedBox(
              height: 200.h,
              child: Padding(
                padding: const EdgeInsets.only(left: 18).r,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                  separatorBuilder: (context, index) => const SizedBox(width: 15),
                  itemBuilder: (context, index) => Container(
                    height: 209.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          AppAssets.hotelHall,
                          height: 110.h,
                          width: 329.w,
                        ),
                        10.verticalSpace,
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10).r,
                              child: Text(
                                AppStrings.theZenGarden,
                                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                AppAssets.star,
                                width: 20.w,
                                height: 20.h,
                              ),
                            ),
                            Text(
                              AppStrings.star,
                              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5).r,
                              child: const Icon(Icons.location_on_outlined),
                            ),
                            Text(
                              AppStrings.lagos,
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: BottomNavigationBar(
              backgroundColor: const Color(0xFF2F2E2E),
              iconSize: 30,
              mouseCursor: SystemMouseCursors.grab,
              selectedItemColor: Color(0xFFBA4723),
              unselectedItemColor: const Color(0xFF959393),
              type: BottomNavigationBarType.shifting,
              onTap: (value) {},
              items: const [
                BottomNavigationBarItem(
                  label: 'home',
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: 'wishlist',
                  icon: Icon(Icons.favorite_outline_outlined),
                ),
                BottomNavigationBarItem(
                  label: 'reservations',
                  icon: Icon(Icons.table_chart_outlined),
                ),
                BottomNavigationBarItem(
                  label: 'profile',
                  icon: Icon(Icons.person_2_outlined),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
