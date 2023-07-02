import 'package:coffeebeens/screens/cart/widgets/bottom-sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../utils/color-constant.dart';

import 'package:sizer/sizer.dart';
class BottomNavBar{
  BottomNavBarWidget(){
    return Container(
      height: 10.h,
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Total Price",style: TextStyle(
                color: AppColors.GREY,
                fontSize: 14.sp
              ),),
              SizedBox(height: 1.h,),
              Text("\$12.00",style: TextStyle(
                  color: AppColors.PRIMARY,
                  fontSize: 16.sp,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
          InkWell(
            onTap: (){
              Get.bottomSheet(Bottom_Sheet().BottomSheetWidget());
            },
            child: Container(
              width: 40.w,
              height: 6.h,
              decoration: BoxDecoration(
                  color: AppColors.PRIMARY,
                  borderRadius: BorderRadius.circular(20.sp)
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.shopping_cart,color: AppColors.WHITE,),
                    Text("Checkout",style: TextStyle(
                        color:AppColors.WHITE,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}