import 'package:dinery_app/view/forget_password/forget_password_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends GetView<ForgetPasswordController> {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Forgot Password",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xFF2F2E2E)),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Image.asset("AppAssets.password.png,"),
        ],
      ),
    );
  }
}
