import 'package:coffeebeens/routes/app-routes.dart';
import 'package:coffeebeens/utils/color-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../home/widgets/loyalty-widget.dart';
import 'logic.dart';

class LoyaltyPage extends StatelessWidget {
  LoyaltyPage({Key? key}) : super(key: key);

  final logic = Get.put(LoyaltyLogic());
  final state = Get
      .find<LoyaltyLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoyaltyLogic>(builder: (logic) {
      return Scaffold(
        appBar: AppBar(backgroundColor: AppColors.WHITE,elevation: 0.0,automaticallyImplyLeading: false,),
        backgroundColor: AppColors.WHITE,
        body: Container(
          height: 100.h,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                  child: Container(
                    height: 2.h,
                    margin: EdgeInsets.symmetric(
                      vertical: 2.h,
                      horizontal: 4.w,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.PRIMARY,
                      borderRadius: BorderRadius.circular(16.sp),
                    ),
                    child: Loyalty().LoyaltyWidget(),
                  )),
              Expanded(
                flex: 1,
                  child: Container(
                    height: 2.h,
                    margin: EdgeInsets.symmetric(
                      vertical: 2.h,
                      horizontal: 4.w,
                    ),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.PRIMARY,
                      borderRadius: BorderRadius.circular(16.sp),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('My Points:',style: TextStyle(
                              color: AppColors.WHITE,
                            ),),
                            SizedBox(height: 1.h,),
                            Text('2510',style: TextStyle(
                              color: AppColors.WHITE,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),),
                          ],
                        ),

                        InkWell(
                          onTap: (){
                            Get.toNamed(Routes.REDEEM);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.sp),
                              color: AppColors.GREY.withOpacity(0.2)
                            ),
                            padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 4.w),
                            child: Text(
                              'Redeem Drinks',style: TextStyle(
                              color: AppColors.WHITE
                            ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('History Rewards',style: TextStyle(
                    color: AppColors.PRIMARY,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.sp
                  ),),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w,),
                  child: ListView.builder(
                      itemCount: logic.rewardList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index){
                    return Container(
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(logic.rewardList[index].drink,style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,color: AppColors.PRIMARY
                              ),),
                              Text(logic.rewardList[index].date,style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal,color: AppColors.GREY
                              ),),
                            ],
                          ),
                          Text(logic.rewardList[index].points,style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,color: AppColors.PRIMARY
                          ),),
                        ],
                      ),
                    );
                  }),
                ),)
            ],
          ),
        ),
      );
    });
  }
}
