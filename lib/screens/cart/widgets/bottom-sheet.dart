import 'package:coffeebeens/routes/app-routes.dart';
import 'package:coffeebeens/utils/image-contstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color-constant.dart';

import 'package:sizer/sizer.dart';
class Bottom_Sheet{
  BottomSheetWidget(){
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        borderRadius: BorderRadius.only(topRight: Radius.circular(16.sp),topLeft: Radius.circular(16.sp))
      ),
      padding: EdgeInsets.all(16.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Order Confirmation",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),),
          SizedBox(height: 2.h,),
          Text("Delivery Address",style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
          ),),
          SizedBox(height: 1.h,),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.LIGHTGREY,
                  borderRadius: BorderRadius.circular(16.sp),
                ),
                padding: EdgeInsets.all(12.sp),
                child: Icon(Icons.location_history_outlined,size: 26.sp,),
              ),
              SizedBox(width: 2.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Anderson",style: TextStyle(
                    color: AppColors.PRIMARY,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 1.h,),
                  Text("763- B block Muslim Town, Lahore",style: TextStyle(
                    color: AppColors.GREY,
                    fontWeight: FontWeight.w400,
                  ),),
                ],
              ),

            ],
          ),
          SizedBox(height: 1.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Subtotal",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.sp
              ),),
              Text("\$12.00",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp
              ),),
            ],
          ),
          SizedBox(height: 1.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Tax Included",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp
              ),),
              Text("\$4.00",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp
              ),),
            ],
          ),
          SizedBox(height: 1.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Delivery Fee",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp
              ),),
              Text("\$4.00",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp
              ),),
            ],
          ),
          Divider(),
          SizedBox(height: 1.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Grand Total",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp
              ),),
              Text("\$20.00",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp
              ),),
            ],
          ),
          Spacer(),
          InkWell(
            onTap: (){
              Get.toNamed(Routes.SUCCESS_ORDER);
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
                child: Text("Proceed to Checkout",style: TextStyle(
                  color: AppColors.WHITE,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}