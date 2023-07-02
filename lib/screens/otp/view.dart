import 'package:coffeebeens/routes/app-routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

import '../../utils/color-constant.dart';
import '../../widgets/auth-button.dart';
import '../../widgets/custom-appbar.dart';
import 'logic.dart';

class OtpPage extends StatelessWidget {
  OtpPage({Key? key}) : super(key: key);

  final logic = Get.put(OtpLogic());
  final state = Get
      .find<OtpLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpLogic>(builder: (logic) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(100.w, 6.h),
          child: AppBarWidget().buildAppBar(),
        ),
        body: Container(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              PinInputTextField(
                controller: logic.otpController,
                pinLength: 4,
                decoration: BoxLooseDecoration(
                    strokeColorBuilder:
                    PinListenColorBuilder(AppColors.PRIMARY, AppColors.GREY.withOpacity(0.2) ),
                    bgColorBuilder: PinListenColorBuilder(AppColors.LIGHTGREY, AppColors.LIGHTGREY ),
                    // colorBuilder: PinListenColorBuilder(AppColors.PRIMARY, AppColors.GREY),
                  // strokeColorBuilder: null,

                ),),
              SizedBox(height: 4.h,),

              Center(
                child: Text('Resend OTP: 00:30', style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.GREY
                ),),
              ),

              SizedBox(height: 14.h,),
              Container(
                padding: EdgeInsets.only(right: 6.w),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: AuthButton().authButton(() {Get.toNamed(Routes.DASHBOARD);}),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
