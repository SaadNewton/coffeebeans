import 'package:coffeebeens/utils/color-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/custom-appbar.dart';
import 'logic.dart';

class RedeemPage extends StatelessWidget {
  RedeemPage({Key? key}) : super(key: key);

  final logic = Get.put(RedeemLogic());
  final state = Get
      .find<RedeemLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RedeemLogic>(builder: (logic) {
      return Scaffold(
        backgroundColor: AppColors.WHITE,
        appBar: PreferredSize(
          preferredSize: Size(100.w, 6.h),
          child: AppBarWidget().buildAppBar(),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: logic.redeemList.length,
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Image.asset(logic.redeemList[index].image)),
                      SizedBox(width: 4.w,),
                      Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                        Text(logic.redeemList[index].drink,style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.PRIMARY
                        ),
                        ),
                          Text(logic.redeemList[index].validity,style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.GREY
                              // fontWeight: FontWeight.bold
                          )
                          ),
                      ],)),
                      Expanded(
                        flex: 2,
                          child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.PRIMARY,
                          borderRadius: BorderRadius.circular(50.sp)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                        child: Center(
                          child: Text(logic.redeemList[index].points,style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.WHITE
                          ),
                          ),
                        ),
                      ))
                    ],
                  ),
                );
          }),
        ),
      );
    });
  }
}
