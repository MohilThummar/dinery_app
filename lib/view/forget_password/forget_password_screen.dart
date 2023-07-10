import 'package:dinery_app/res/constant/app_strings.dart';
import 'package:dinery_app/utils/routes/routes_name.dart';
import 'package:dinery_app/view/forget_password/forget_password_controler.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../res/common/app_button.dart';
import '../../res/common/app_text_field.dart';
import '../../res/constant/app_assets.dart';

class ForgetPasswordScreen extends GetView<ForgetPasswordController> {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, right: 150).r,
            child: Text(
              AppStrings.forgotPassword,
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24.sp),
            ),
          ),
          55.verticalSpace,
          Center(
            child: Image.asset(
              AppAssets.password,
              width: 212.w,
              height: 141.h,
            ),
          ),
          40.verticalSpace,
          Text(
            AppStrings.resetPassword,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
            textAlign: TextAlign.center,
          ),
          20.verticalSpace,
          Text(
            AppStrings.emailAddress,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
          ),
          15.verticalSpace,
          CustomTextField(
            controller: TextEditingController(),
            hintText: AppStrings.mailAddress,
            borderVisible: false,
            width: 50.w,
          ),
          35.verticalSpace,
          AppButton(
            height: 50.h,
            width: 330.w,
            title: AppStrings.send,
            fontSize: 15.sp,
            onPressed: () {
              Get.toNamed(checkMailRoutes);
            },
          ),
          30.verticalSpace,
          RichText(
            text: TextSpan(
              text: AppStrings.rememberPassword,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: AppStrings.login,
                  style: TextStyle(
                    color: const Color(0xffBA4723),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Get.toNamed(forgetPasswordRoutes);
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
