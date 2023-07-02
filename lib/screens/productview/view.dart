import 'dart:math';

import 'package:coffeebeens/utils/color-constant.dart';
import 'package:coffeebeens/utils/image-contstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../routes/app-routes.dart';
import '../../widgets/custom-appbar.dart';
import 'logic.dart';

class ProductviewPage extends StatelessWidget {
  final String name;
  final String image;

  ProductviewPage({Key? key, required this.name, required this.image})
      : super(key: key);

  final logic = Get.put(ProductviewLogic());
  final state = Get
      .find<ProductviewLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductviewLogic>(builder: (logic) {
      return Scaffold(
        backgroundColor: AppColors.WHITE,
        appBar: PreferredSize(
          preferredSize: Size(100.w, 6.h),
          child: AppBarWidget().buildAppBar(),
        ),
        bottomNavigationBar: Container(
          height: 16.h,
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Amount',style: TextStyle(
                    color: AppColors.PRIMARY,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp
                  ),),
                  Text('\$ 3.00',style: TextStyle(
                      color: AppColors.PRIMARY,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp
                  ),)
                ],
              ),
              SizedBox(height: 2.h,),
              InkWell(
                onTap: (){
                  Get.toNamed(Routes.CART);
                },
                child: Container(
                  width: 100.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    color: AppColors.PRIMARY,
                    borderRadius: BorderRadius.circular(20.sp)
                  ),
                  child: Center(
                    child: Text("Checkout",style: TextStyle(
                      color:AppColors.WHITE,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            children: [
              Container(
                width: 100.w,

                // padding: EdgeInsets.all(20.sp),
                decoration: BoxDecoration(
                  color: AppColors.LIGHTGREY,
                  borderRadius: BorderRadius.circular(20.sp)
                ),
                child: Image.asset(image,height: 20.h,),
              ),
              SizedBox(height: 2.h,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name,style: TextStyle(
                      color: AppColors.PRIMARY,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold
                    ),

                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.LIGHTGREY,
                        borderRadius: BorderRadius.circular(20.sp),
                        border: Border.all(color: AppColors.GREY.withOpacity(0.2)),
                      ),
                      padding: EdgeInsets.all(4.sp),
                      child: Row(
                        children: [
                          InkWell(
                              onTap:(){
                               logic.counterValue = max(logic.counterValue - 1,0);
                                logic.update();
                              },
                              child: Icon(Icons.remove)),
                          SizedBox(width: 2.w,),
                          Text(logic.counterValue.toString(),style: TextStyle(
                            color: AppColors.PRIMARY,
                            fontSize: 10.sp
                          ),),
                          SizedBox(width: 2.w,),
                          InkWell(
                              onTap:(){
                                logic.counterValue = logic.counterValue + 1;
                                logic.update();
                              },
                              child: Icon(Icons.add)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(color: AppColors.GREY.withOpacity(0.2),),
              // SizedBox(height: 2.h,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shot',style: TextStyle(
                        color: AppColors.PRIMARY,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold
                    ),),
                    Row(

                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.LIGHTGREY,
                            borderRadius: BorderRadius.circular(20.sp),
                            border: Border.all(color: AppColors.GREY.withOpacity(0.2)),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 4.w),
                          child: Text('Single'),
                        ),
                        SizedBox(width: 2.w,),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.LIGHTGREY,
                            borderRadius: BorderRadius.circular(20.sp),
                            border: Border.all(color: AppColors.GREY.withOpacity(0.2)),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 4.w),
                          child: Text('Double'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(color: AppColors.GREY.withOpacity(0.2),),
              // SizedBox(height: 2.h,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Select',style: TextStyle(
                        color: AppColors.PRIMARY,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold
                    ),),
                    Row(

                      children: [
                        Image.asset(AppImages.COFFEECUP,color: AppColors.GREY,width: 8.w,),
                        SizedBox(width: 4.w,),
                        Image.asset(AppImages.COFFEEGLASS,color: AppColors.GREY,width: 6.w,),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
