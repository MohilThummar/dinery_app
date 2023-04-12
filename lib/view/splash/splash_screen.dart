import 'package:dinery_app/view/splash/splash_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: ScreenUtil().statusBarHeight), //Status bar height , Notch will be higher
          SizedBox(height: ScreenUtil().bottomBarHeight), //Bottom safe zone distance, suitable for buttons with full screen
          Center(
            child: Container(
              color: Colors.amber,
              child: Image.asset(
                "assets/images/Group 659.png",
                // width: 0.3.sw, // Screen Width 30%
                // height: 0.08.sh, // Screen height 8%

                // height: 50.h, //Adapted to screen height
                // width: 100.w, //Adapted to screen width
              ),
            ),
          ),
          //for example:

          //If you want to display a rectangle:
          Container(
            width: 75.w,
            height: 75.h,
            color: Colors.brown,
          ),

          //If you want to display a square based on width:
          Container(
            width: 30.w,
            height: 30.w,
            color: Colors.red,
          ),

          //If you want to display a square based on height:
          Container(
            width: 30.h,
            height: 30.h,
            color: Colors.deepPurple,
          ),

          //If you want to display a square based on minimum(height, width):
          Container(
            width: 30.r,
            height: 30.r,
            color: Colors.tealAccent,
          ),

          Text(
            '16sp, will not change with the system.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
            ),
            // textScaleFactor: 1.0,
          ),
          Text(
            '16sp,if data is not set in MediaQuery,my font size will change with the system. ${MediaQuery.of(context).size.width} ${MediaQuery.of(context).size.height}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
