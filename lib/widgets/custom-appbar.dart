import 'package:coffeebeens/utils/color-constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget{
  Widget buildAppBar(){
    return AppBar(
      backgroundColor: AppColors.WHITE,
      leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: Icon(Icons.arrow_back,color: AppColors.PRIMARY,)),
      elevation: 0.0,
    );
  }
}