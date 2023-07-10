import 'package:dinery_app/res/common/app_button.dart';
import 'package:dinery_app/res/constant/app_strings.dart';
import 'package:dinery_app/view/welcome/welcome_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../res/constant/app_assets.dart';
import '../../utils/routes/routes_name.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          150.verticalSpace,
          Center(
            child: Image.asset(
              AppAssets.welcome,
              height: 141.h,
              width: 212.h,
            ),
          ),
          45.verticalSpace,
          Text(
            AppStrings.started,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          25.verticalSpace,
          Text(
            AppStrings.starting,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          35.verticalSpace,
          AppButton(
            title: AppStrings.signup,
            onPressed: () {
              Get.toNamed(signUpRoutes);
            },
          ),
          15.verticalSpace,
          AppButton(
            title: AppStrings.login,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
