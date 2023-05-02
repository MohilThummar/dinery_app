import 'package:dinery_app/res/common/app_text_field.dart';
import 'package:dinery_app/utils/routes/routes_name.dart';
import 'package:dinery_app/view/sign_up/sign_up_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../res/common/app_button.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, right: 240).r,
            child: Text(
              "Sign up",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15).r,
            child: Text(
              "Enter your details below to create an account",
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 250).r,
            child: Text(
              "Full name",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
            ),
          ),
          10.verticalSpace,
          CustomTextField(
            controller: TextEditingController(),
            hintText: "Enter your full name",
            borderVisible: false,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 210).r,
            child: Text(
              "Email address",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
            ),
          ),
          10.verticalSpace,
          CustomTextField(
            controller: TextEditingController(),
            hintText: "example@gmail.com",
            borderVisible: false,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 245).r,
            child: Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
            ),
          ),
          10.verticalSpace,
          CustomTextField(
            controller: TextEditingController(),
            hintText: "Input Password",
            borderVisible: false,
            width: 50.w,
            suffixIcon: const Icon(Icons.visibility_off, color: Colors.black),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
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
              RichText(
                text: const TextSpan(
                  text: "I accept the",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: " terms",
                      style: TextStyle(
                        color: Color(0xffBA4723),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: " and",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: " privacy policy",
                      style: TextStyle(
                        color: Color(0xffBA4723),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          30.verticalSpace,
          AppButton(
            width: 400,
            title: "Sign up",
            fontSize: 14,
            onPressed: () {
              Get.toNamed(logInRoutes);
            },
          ),
          10.verticalSpace,
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 19).r,
                  child: const Divider(
                    color: Colors.black26,
                    height: 10,
                    thickness: 2,
                    endIndent: 20,
                    indent: 15,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Or",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Divider(
                    color: Colors.black26,
                    height: 10,
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
            width: 400,
            title: "Sign up with google",
            fontSize: 14,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/Google.png", height: 20.h, width: 20.w),
                10.horizontalSpace,
                const Text(
                  "Sign up with google",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
