import 'package:dinery_app/res/common/app_button.dart';
import 'package:dinery_app/res/constant/app_assets.dart';
import 'package:dinery_app/res/constant/app_strings.dart';
import 'package:dinery_app/utils/routes/routes_name.dart';
import 'package:dinery_app/view/check_email/check_mail_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CheckMailScreen extends GetView<CheckMailController> {
  const CheckMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            60.verticalSpace,
            Text(
              AppStrings.checkMail,
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24.sp),
              // textAlign: TextAlign.left,
            ),
            50.verticalSpace,
            Center(
              child: Image.asset(
                AppAssets.mailbox,
                height: 141.h,
                width: 212.h,
              ),
            ),
            50.verticalSpace,
            Center(
              child: Text(
                AppStrings.checkMailDetail,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            40.verticalSpace,
            AppButton(
              height: 50.h,
              width: double.infinity,
              title: AppStrings.openEmailApp,
              fontSize: 15.sp,
              onPressed: () {
                Get.toNamed(newPasswordRoutes);
              },
            ),
            25.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.receiveMail,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
                  textAlign: TextAlign.center,
                ),
                RichText(
                    text: TextSpan(
                  text: AppStrings.resend,
                  style: TextStyle(
                    color: const Color(0XFFBA4723),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ))
              ],
            ),
          ],
        ).paddingSymmetric(
          horizontal: 20.h,
        ),
      ),
    );
  }
}
