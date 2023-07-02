import 'dart:async';
import 'dart:ui';

import 'package:coffeebeens/routes/app-routes.dart';
import 'package:coffeebeens/utils/image-contstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'logic.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  final logic = Get.put(SplashLogic());
  final state = Get
      .find<SplashLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashLogic>(
      initState: (_){
        Timer(
            Duration(seconds: 3),
                () => Get.toNamed(Routes.ONBOARDING));
      },
        builder: (logic) {
      return Scaffold(
        body: Container(
          width: double.infinity,
         decoration: BoxDecoration(
           color: Colors.grey,
           image: DecorationImage(
             image: AssetImage(AppImages.SPLASH_BG),
             fit: BoxFit.cover,
           )
         ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 30.w,
                    child: Image.asset(AppImages.LOGO)),
                SizedBox(height: 4.h,),
                Text("Ordinary Coffee House",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),)

              ],
            ),
          ),
        )
      );
    });
  }
}
