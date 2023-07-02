import 'package:coffeebeens/utils/color-constant.dart';
import 'package:flutter/cupertino.dart';

import '../logic.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ItemList {
  ItemListWidget() {
    return GetBuilder<CartLogic>(builder: (logic) {
      return ListView.builder(
        itemCount: logic.itemList.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          // padding: EdgeInsets.all(10.sp),
          itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: AppColors.LIGHTGREY,
              borderRadius: BorderRadius.circular(14.sp)
            ),
            padding: EdgeInsets.all(10.sp),
            margin: EdgeInsets.symmetric(vertical: 1.h,horizontal: 4.w),
            child: Row(
              children: [
                Image.asset(logic.itemList[index].image,width: 26.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(logic.itemList[index].name,style: TextStyle(
                      color: AppColors.PRIMARY,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 1.h,),
                    Text(logic.itemList[index].description,style: TextStyle(
                        color: AppColors.GREY,
                        fontSize: 10.sp,
                        // fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                Spacer(),
                Text("\$${logic.itemList[index].price}",style: TextStyle(
                    color: AppColors.PRIMARY,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
          );
          });
    });
  }
}