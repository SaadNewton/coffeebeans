import 'package:coffeebeens/routes/app-routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../utils/color-constant.dart';
import '../../utils/image-contstants.dart';
import 'logic.dart';

class Order_trackingPage extends StatelessWidget {
  Order_trackingPage({Key? key}) : super(key: key);

  final logic = Get.put(Order_trackingLogic());
  final state = Get
      .find<Order_trackingLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Order_trackingLogic>(builder: (logic) {
      return Scaffold(
        bottomNavigationBar: Container(
          height: 40.h,
          decoration: BoxDecoration(
            color: AppColors.PRIMARY,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.sp),topRight: Radius.circular(20.sp))
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.sp),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.LIGHTGREY,
                        shape: BoxShape.circle
                      ),
                      padding: EdgeInsets.all(6.sp),
                      child: Image.asset(AppImages.PERSON,width: 10.w,),),
                    SizedBox(width: 4.w,),
                    Text("Leslie Sheeran",style: TextStyle(
                      color: AppColors.WHITE,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold
                    ),),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        Get.toNamed(Routes.CALL);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.LIGHTGREY.withOpacity(0.2),
                            shape: BoxShape.circle
                        ),
                        padding: EdgeInsets.all(6.sp),
                        child: Icon(Icons.call,color: AppColors.WHITE,),),
                    ),
                    SizedBox(width: 4.w,),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.LIGHTGREY.withOpacity(0.2),
                          shape: BoxShape.circle
                      ),
                      padding: EdgeInsets.all(6.sp),
                      child: Icon(Icons.message,color: AppColors.WHITE,)),
                  ],
                ),
              ),
              Container(
                height: 24.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: AppColors.WHITE,
                  borderRadius: BorderRadius.circular(20.sp)
                ),
                margin: EdgeInsets.all(16.sp),
                padding: EdgeInsets.all(16.sp),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.PRIMARY,
                              shape: BoxShape.circle
                          ),
                          padding: EdgeInsets.all(10.sp),
                          child: Image.asset(AppImages.HOME,width: 6.w,color: AppColors.WHITE,),),
                        SizedBox(width: 4.w,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Adam Coffee Shop",style: TextStyle(
                              color: AppColors.PRIMARY,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp
                            ),),
                            Text("Preparing your food",style: TextStyle(
                              color: AppColors.GREY,
                              // fontWeight: FontWeight.bold,
                              fontSize: 10.sp
                            ),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.PRIMARY,
                              shape: BoxShape.circle
                          ),
                          padding: EdgeInsets.all(10.sp),
                          child: Image.asset(AppImages.RIDER,width: 6.w,color: AppColors.WHITE,),),
                        SizedBox(width: 4.w,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Adam Coffee Shop",style: TextStyle(
                                color: AppColors.PRIMARY,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp
                            ),),
                            Text("Preparing your food",style: TextStyle(
                                color: AppColors.GREY,
                                // fontWeight: FontWeight.bold,
                                fontSize: 10.sp
                            ),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 1.h,),
                    InkWell(
                      onTap: (){
                        Get.offAllNamed(Routes.DASHBOARD);
                        // Get.toNamed(Routes.ORDER_TRACKING);
                        // Get.toNamed(Routes.SUCCESS_ORDER);
                      },
                      child: Container(
                        width: 50.w,
                        // height: 4.h,
                        decoration: BoxDecoration(
                          color: AppColors.PRIMARY,
                          borderRadius: BorderRadius.circular(50.sp),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        child: Center(
                          child: Text("Complete Order",style: TextStyle(
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
            ],
          ),
        ),
        extendBody: true,
        body: Container(
          height: 100.h,
          child: Image.asset(AppImages.MAP,fit: BoxFit.fill,),
        ),
      );
    });
  }
}
