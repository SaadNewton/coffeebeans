
import 'package:coffeebeens/utils/color-constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import '../logic.dart';

class Loyalty {
  LoyaltyWidget() {
    return GetBuilder<HomeLogic>(builder: (logic) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Loyalty Cards', style: TextStyle(color: AppColors
                    .WHITE),),
                Text('4/8', style: TextStyle(color: AppColors.WHITE))
              ],
            ),
            Container(
              width: 100.w,
              height: 8.h,
              margin: EdgeInsets.only(top: 2.h),
              decoration: BoxDecoration(
                  color: AppColors.WHITE,
                borderRadius: BorderRadius.circular(10.sp)
              ),
              child: Center(
                child: ListView.builder(
                    itemCount: logic.loyaltyMugs.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),

                    itemBuilder: (context,index){
                  return Image.asset(logic.loyaltyMugs[index],height: 6.h,width: 10.w,);
                }),
              ),
            )
          ],
        ),
      );
    });
  }
}