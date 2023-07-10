import 'package:dinery_app/res/common/app_button.dart';
import 'package:dinery_app/res/constant/app_strings.dart';
import 'package:dinery_app/view/new_password/new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../res/constant/app_assets.dart';

class ResetScreen extends GetView<NewPasswordController> {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          150.verticalSpace,
          Center(
            child: Image.asset(
              AppAssets.checkBox,
              height: 120.h,
              width: 120.h,
            ),
          ),
          35.verticalSpace,
          Text(
            AppStrings.passwordResetSuccessful,
            style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w700),
          ),
          25.verticalSpace,
          Text(
            AppStrings.passwordSuccessful,
            style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          35.verticalSpace,
          AppButton(
            height: 50.h,
            width: 310.w,
            title: AppStrings.login,
            fontSize: 15.sp,
            onPressed: () {
              // Get.toNamed(homeScreenRoutes);
            },
          ),
        ],
      ),
    );
  }
}
