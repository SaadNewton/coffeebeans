import 'package:coffeebeens/screens/home/widgets/app-bar-home.dart';
import 'package:coffeebeens/screens/home/widgets/loyalty-widget.dart';
import 'package:coffeebeens/utils/color-constant.dart';
import 'package:coffeebeens/widgets/custom-appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../routes/app-routes.dart';
import 'logic.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final logic = Get.put(HomeLogic());
  final state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(builder: (logic) {
      return Scaffold(
        backgroundColor: AppColors.WHITE,
        appBar: PreferredSize(
          preferredSize: Size(100.w, 6.h),
          child: AppBarHome().HomeAppBarWidget(),
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
              height: 2.h,
              margin: EdgeInsets.symmetric(
                vertical: 4.h,
                horizontal: 4.w,
              ),
              decoration: BoxDecoration(
                color: AppColors.PRIMARY,
                borderRadius: BorderRadius.circular(16.sp),
              ),
              child: Loyalty().LoyaltyWidget(),
            )),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(18.sp),
                width: 100.w,
                decoration: BoxDecoration(
                    color: AppColors.PRIMARY,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.sp),
                        topRight: Radius.circular(20.sp))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose your Coffee',
                      style: TextStyle(color: AppColors.WHITE, fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    GridView.builder(
                      itemCount: logic.gridItemList.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16.sp,
                          mainAxisSpacing: 16.sp
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){
                              Get.toNamed(Routes.PRODUCTVIEW,parameters: <String,String>{
                                "image": logic.gridItemList[index].image.toString(),
                                "name" : logic.gridItemList[index].name
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.WHITE,
                                borderRadius: BorderRadius.circular(12.sp)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(10.sp),
                                      child: Image.asset(logic.gridItemList[index].image)),
                                  Text(logic.gridItemList[index].name)
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class GridItem{
  final String name;
  final String image;

  GridItem({required this.name,required this.image});
}
