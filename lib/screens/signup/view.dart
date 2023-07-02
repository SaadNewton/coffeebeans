import 'package:coffeebeens/routes/app-routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../utils/color-constant.dart';
import '../../utils/image-contstants.dart';
import '../../widgets/auth-button.dart';
import '../../widgets/custom-appbar.dart';
import '../../widgets/custom-text-field.dart';
import 'logic.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  final logic = Get.put(SignupLogic());
  final state = Get
      .find<SignupLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupLogic>(builder: (logic) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(100.w, 6.h),
          child: AppBarWidget().buildAppBar(),
        ),
        // extendBodyBehindAppBar: true,
        extendBody: true,
        bottomNavigationBar: Container(
          height: 20.h,
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
          child: Row(
            children: [
              Text('Already a Member? ', style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.GREY
              ),),
              Text('Sign In', style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.PRIMARY
              ),),
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
                Text('Sign Up', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.sp,
                  color: AppColors.PRIMARY,
                ),),
                SizedBox(height: 2.h,),
                Text('Create an account here', style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.GREY
                ),),
                SizedBox(height: 4.h,),
                CustomTextField(textEditingController: logic.userNameController,
                  lable: 'User Name',
                  leadingIcon: AppImages.PERSON,),
                SizedBox(height: 2.h,),
                CustomTextField(textEditingController: logic.phoneController,
                  lable: 'Phone Number',
                  leadingIcon: AppImages.PHONE,
                ),
                SizedBox(height: 2.h,),
                CustomTextField(textEditingController: logic.emailController,
                    lable: 'Email Address',
                    leadingIcon: AppImages.SMS),
                SizedBox(height: 2.h,),
                CustomTextField(textEditingController: logic.passwordController,
                  lable: 'Password',
                  leadingIcon: AppImages.LOCK,
                  isPassword: true,
                  obSecure: true,),

                SizedBox(height: 3.h,),
                Align(
                  alignment: Alignment.center,
                  child: Text('By signing up you agree with our Terms of Use', style: TextStyle(
                      // decoration: TextDecoration.underline,
                      fontSize: 10.sp
                  ),),
                ),
                SizedBox(height: 14.h,),
                Container(
                  padding: EdgeInsets.only(right: 6.w),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: AuthButton().authButton(() {
                      Get.toNamed(Routes.OTP);
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
