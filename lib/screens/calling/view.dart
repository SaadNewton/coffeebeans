import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color-constant.dart';
import '../../utils/image-contstants.dart';
import '../../widgets/custom-appbar.dart';
import 'logic.dart';

import 'package:sizer/sizer.dart';
class CallingPage extends StatelessWidget {
  CallingPage({Key? key}) : super(key: key);

  final logic = Get.put(CallingLogic());
  final state = Get
      .find<CallingLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CallingLogic>(builder: (logic) {
      return Scaffold(
        backgroundColor: AppColors.WHITE,
        // appBar: PreferredSize(
        //   preferredSize: Size(100.w, 6.h),
        //   child: AppBarWidget().buildAppBar(),
        // ),
        body: Container(
          width: 100.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Incoming Call",style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 1.h,),
              Text("12:15",style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.GREY
                  // fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.LIGHTGREY,
                    shape: BoxShape.circle
                ),
                padding: EdgeInsets.all(6.sp),
                child: Image.asset(AppImages.PERSON,width: 40.w,),),
              SizedBox(height: 2.h,),
              Text("Leslie Sheeran",style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 6.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.LIGHTGREY,
                            shape: BoxShape.circle
                        ),
                        padding: EdgeInsets.all(12.sp),
                        child: Icon(Icons.volume_off,size: 24.sp,),),
                      SizedBox(height: 1.h,),
                      Text("Mute",style: TextStyle(
                          fontSize: 10.sp,
                          // fontWeight: FontWeight.bold
                      ),),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.LIGHTGREY,
                            shape: BoxShape.circle
                        ),
                        padding: EdgeInsets.all(12.sp),
                        child: Icon(Icons.dialpad_outlined,size: 24.sp,),),
                      SizedBox(height: 1.h,),
                      Text("Dail Pad",style: TextStyle(
                          fontSize: 10.sp,
                          // fontWeight: FontWeight.bold
                      ),),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.LIGHTGREY,
                            shape: BoxShape.circle
                        ),
                        padding: EdgeInsets.all(12.sp),
                        child: Icon(Icons.volume_down_rounded,size: 24.sp,),),
                      SizedBox(height: 1.h,),
                      Text("Speaker",style: TextStyle(
                          fontSize: 10.sp,
                          // fontWeight: FontWeight.bold
                      ),),

                    ],
                  ),
                ],
              ),
              SizedBox(height: 6.h,),

              InkWell(
                onTap: (){
                  Get.back();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.RED,
                      shape: BoxShape.circle
                  ),
                  padding: EdgeInsets.all(12.sp),
                  child: Icon(Icons.call_end_outlined,size: 24.sp,color: AppColors.WHITE,),),
              ),
            ],
          ),
        ),
      );
    });
  }
}
