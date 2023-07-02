import 'package:coffeebeens/utils/image-contstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';
import '../../routes/app-routes.dart';
import '../../utils/color-constant.dart';
import '../../widgets/custom-appbar.dart';
import 'logic.dart';

class Success_orderPage extends StatelessWidget {
  Success_orderPage({Key? key}) : super(key: key);

  final logic = Get.put(Success_orderLogic());
  final state = Get
      .find<Success_orderLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Success_orderLogic>(builder: (logic) {
      return Scaffold(
        backgroundColor: AppColors.WHITE,
        appBar: PreferredSize(
          preferredSize: Size(100.w, 6.h),
          child: AppBarWidget().buildAppBar(),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.SUCCESSORDER,width: 30.w,),
              SizedBox(height: 4.h,),
              Text('Order Success',style: TextStyle(
                color: AppColors.PRIMARY,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 1.h,),

              Text('Your order has been placed successfully. For more details, go to my orders.',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: AppColors.GREY,
                fontSize: 12.sp,
              ),),
              SizedBox(height: 8.h,),

              InkWell(
                onTap: (){
                  Get.toNamed(Routes.ORDER_TRACKING);
                  // Get.toNamed(Routes.SUCCESS_ORDER);
                },
                child: Container(
                  width: 100.w,
                  // height: 4.h,
                  decoration: BoxDecoration(
                    color: AppColors.PRIMARY,
                    borderRadius: BorderRadius.circular(50.sp),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Center(
                    child: Text("Track My Order",style: TextStyle(
                        color: AppColors.WHITE,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              )

            ],
          ),
        ),
      );
    });
  }
}
