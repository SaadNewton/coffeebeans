import 'package:coffeebeens/utils/color-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

import '../../routes/app-routes.dart';
import '../../utils/image-contstants.dart';
import '../../widgets/auth-button.dart';
import '../../widgets/custom-appbar.dart';
import '../../widgets/custom-text-field.dart';
import 'logic.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);

  final logic = Get.put(ForgotPasswordLogic());
  final state = Get
      .find<ForgotPasswordLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPasswordLogic>(builder: (logic) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(100.w, 6.h),
          child: AppBarWidget().buildAppBar(),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2.h,),
                Text('Forgot Password?',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.sp,
                  color: AppColors.PRIMARY
                ),),
                SizedBox(height: 2.h,),
                Text('Enter your email address',style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.GREY
                ),),
                SizedBox(height: 4.h,),
                CustomTextField(textEditingController: logic.forGotController, lable: 'Email Address', leadingIcon: AppImages.SMS),
                SizedBox(height: 14.h,),
                Container(
                  padding: EdgeInsets.only(right: 6.w),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: AuthButton().authButton(() {
                      Get.toNamed(Routes.OTP);
                      // Get.toNamed(Routes.)
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
        // body: Container(
        //   padding: EdgeInsets.all(16.sp),
        //   child: Column(
        //     children: [
        //       PinInputTextField(
        //         controller: logic.forGotController,
        //         pinLength: 4,
        //         decoration: UnderlineDecoration(
        //             colorBuilder: PinListenColorBuilder(AppColors.PRIMARY, AppColors.GREY),
        //
        //         ),),
        //     ],
        //   ),
        // ),
      );
    });
  }
}
