import 'package:dinery_app/res/common/app_button.dart';
import 'package:dinery_app/res/common/app_text_field.dart';
import 'package:dinery_app/res/constant/app_assets.dart';
import 'package:dinery_app/res/constant/app_strings.dart';
import 'package:dinery_app/view/new_password/new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/routes/routes_name.dart';

class NewPasswordScreen extends GetView<NewPasswordController> {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.verticalSpace,
            Text(
              AppStrings.newPassword,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.left,
            ),
            55.verticalSpace,
            Center(
              child: Image.asset(
                AppAssets.newPassword,
                height: 141,
                width: 212,
              ),
            ),
            30.verticalSpace,
            Center(
              child: Text(
                AppStrings.passwordDetail,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, bottom: 10),
              child: Text(
                AppStrings.password,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: AppStrings.inVisible,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, bottom: 10),
              child: Text(
                AppStrings.password,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: AppStrings.vector,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Text(
                AppStrings.bothPasswordsMustMatch,
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
            ),
            40.verticalSpace,
            Center(
              child: AppButton(
                height: 50.h,
                width: 340.w,
                title: AppStrings.createPassword,
                fontSize: 14.sp,
                onPressed: () {
                  Get.toNamed(resetScreenRoutes);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
