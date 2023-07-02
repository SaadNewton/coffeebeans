import 'package:coffeebeens/utils/color-constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class AuthButton{
  authButton(VoidCallback onTap){
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.PRIMARY,
          shape: BoxShape.circle
        ),
        padding: EdgeInsets.all(12.sp),
        child: Icon(
          Icons.arrow_forward,
          color: AppColors.WHITE,
        ),
      ),
    );
  }
}