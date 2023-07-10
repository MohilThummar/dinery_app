import 'package:dinery_app/res/common/app_button.dart';
import 'package:dinery_app/res/common/app_text_field.dart';
import 'package:dinery_app/utils/routes/routes_name.dart';
import 'package:dinery_app/view/log_in/log_in_controler.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../res/constant/app_assets.dart';
import '../../res/constant/app_strings.dart';

class LogInScreen extends GetView<LogInController> {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, right: 150, left: 20).r,
            child: Text(
              AppStrings.welcome,
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20).r,
            child: Text(
              AppStrings.loginDetails,
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 205).r,
            child: Text(
              AppStrings.emailAddress,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
            ),
          ),
          10.verticalSpace,
          CustomTextField(
            controller: TextEditingController(),
            hintText: AppStrings.email,
            borderVisible: false,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 240).r,
            child: Text(
              AppStrings.password,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
            ),
          ),
          12.verticalSpace,
          CustomTextField(
            controller: TextEditingController(),
            hintText: AppStrings.inputPassword,
            borderVisible: false,
            width: 50.w,
            suffixIcon: const Icon(Icons.visibility_off, color: Colors.black),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10).r,
                child: Checkbox(
                  side: const BorderSide(color: Color(0xffBA4723)),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  focusColor: const Color(0xffBA4723),
                  value: false,
                  onChanged: (value) {
                    value = true;
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.rememberMe,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              45.horizontalSpace,
              RichText(
                text: TextSpan(
                  text: AppStrings.forgetPassword,
                  style: TextStyle(
                    color: const Color(0xffBA4723),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.toNamed(forgetPasswordRoutes);
                    },
                ),
              ),
            ],
          ),
          30.verticalSpace,
          AppButton(
            height: 50.h,
            width: 320.w,
            title: AppStrings.login,
            fontSize: 14,
            onPressed: () {
              Get.toNamed(homeScreenRoutes);
            },
          ),
          10.verticalSpace,
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 19).r,
                  child: Divider(
                    color: Colors.black26,
                    height: 10.h,
                    thickness: 2,
                    endIndent: 20,
                    indent: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20).r,
                child: Text(
                  AppStrings.or,
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20).r,
                  child: Divider(
                    color: Colors.black26,
                    height: 10.h,
                    thickness: 2,
                    endIndent: 20,
                    indent: 15,
                  ),
                ),
              ),
            ],
          ),
          25.verticalSpace,
          AppButton(
            height: 50.h,
            width: 320.w,
            title: AppStrings.signUpGoogle,
            fontSize: 14.sp,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.google, height: 20.h, width: 20.w),
                10.horizontalSpace,
                Text(
                  AppStrings.signUpGoogle,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
          15.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: AppStrings.account,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: AppStrings.signup,
                      style: TextStyle(
                        color: const Color(0xffBA4723),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
