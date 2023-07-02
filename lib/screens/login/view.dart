import 'package:coffeebeens/routes/app-routes.dart';
import 'package:coffeebeens/utils/color-constant.dart';
import 'package:coffeebeens/utils/image-contstants.dart';
import 'package:coffeebeens/widgets/auth-button.dart';
import 'package:coffeebeens/widgets/custom-appbar.dart';
import 'package:coffeebeens/widgets/custom-text-field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'logic.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final logic = Get.put(LoginLogic());
  final state = Get
      .find<LoginLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginLogic>(builder: (logic) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(100.w, 6.h),
          child: AppBarWidget().buildAppBar(),
        ),
        // extendBodyBehindAppBar: true,
        extendBody: true,
        bottomNavigationBar: Container(
          height:20.h,
          padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 10.w),
          child: Row(
            children: [
              Text('New Member? ',style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.GREY
              ),),
              InkWell(
                onTap: (){
                  Get.toNamed(Routes.SIGNUP);
                },
                child: Text('Sign Up',style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.PRIMARY
                ),),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2.h,),
                Text('Sign In',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.sp,
                  color: AppColors.PRIMARY
                ),),
                SizedBox(height: 2.h,),
                Text('Welcome Back',style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.GREY
                ),),
                SizedBox(height: 4.h,),
                CustomTextField(textEditingController: logic.emailController, lable: 'Email Address', leadingIcon: AppImages.SMS),
                SizedBox(height: 2.h,),
                CustomTextField(textEditingController: logic.passwordController, lable: 'Password', leadingIcon: AppImages.LOCK,isPassword: true, obSecure: true,),
                SizedBox(height: 3.h,),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: (){
                      Get.toNamed(Routes.FORGOT);
                    },
                    child: Text('Forgot Password?',style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 12.sp
                    ),),
                  ),
                ),
                SizedBox(height: 14.h,),
                Container(
                  padding: EdgeInsets.only(right: 6.w),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: AuthButton().authButton(() {
                      Get.toNamed(Routes.DASHBOARD);
                      // Get.toNamed(Routes.)
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
