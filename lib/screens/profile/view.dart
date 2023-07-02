import 'package:coffeebeens/utils/color-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/custom-appbar.dart';
import 'logic.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final logic = Get.put(ProfileLogic());
  final state = Get.find<ProfileLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      appBar: PreferredSize(
        preferredSize: Size(100.w, 6.h),
        child: AppBarWidget().buildAppBar(),
      ),
      bottomNavigationBar: Container(
        height: 6.h,
        decoration: BoxDecoration(
          color: AppColors.PRIMARY,
          borderRadius: BorderRadius.circular(50.sp)
        ),
        margin: EdgeInsets.all(20.sp),
        child: Center(
          child: Text(
            'Edit Profile',
            style: TextStyle(
              color: AppColors.WHITE,
              fontWeight: FontWeight.bold,
              fontSize: 12.sp
            ),
          ),
        ),
      ),

      body: Container(
        width: 100.w,
        padding: EdgeInsets.symmetric(vertical: 3.h,horizontal: 4.w),
        child: ListView.builder(
            itemCount: logic.profileList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,index){
          return Container(
            padding: EdgeInsets.all(4.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.LIGHTGREY,
                        shape: BoxShape.circle
                    ),
                    padding: EdgeInsets.all(12.sp),
                    child: Image.asset(logic.profileList[index].image,width: 8.w,)),
                ),
                SizedBox(width: 4.w,),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(logic.profileList[index].heading,style: TextStyle(
                        color: AppColors.GREY,
                      ),),
                      SizedBox(height: 1.h,),
                      Text(logic.profileList[index].name,style: TextStyle(
                        color: AppColors.PRIMARY,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ),

              ],
            ),
          );
        }),
      ),
    );
  }
}
