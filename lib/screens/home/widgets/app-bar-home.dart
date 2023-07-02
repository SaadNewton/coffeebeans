import 'package:coffeebeens/utils/color-constant.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import '../../../routes/app-routes.dart';
import '../../../utils/image-contstants.dart';

class AppBarHome{
  HomeAppBarWidget(){
    return AppBar(
      elevation: 0.0,
      backgroundColor: AppColors.WHITE,
      automaticallyImplyLeading: false,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Good Morning",style: TextStyle(
            color: AppColors.GREY,
            fontSize: 14.sp
          ),),
          Text("Aderson",style: TextStyle(
            color: AppColors.PRIMARY,
            fontSize: 16.sp
          ),),
        ],
      ),
      actions: [
        InkWell(
            onTap: (){
              Get.toNamed(Routes.CART);
            },
            child: Image.asset(AppImages.CART,width: 8.w,)),
        SizedBox(width: 4.w,),
        InkWell(
            onTap: (){
              Get.toNamed(Routes.PROFILE);
            },
            child: Image.asset(AppImages.PERSON,width: 8.w,)),
        SizedBox(width: 4.w,),
      ],
    );
  }
}