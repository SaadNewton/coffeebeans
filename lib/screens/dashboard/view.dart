import 'package:coffeebeens/utils/color-constant.dart';
import 'package:coffeebeens/utils/image-contstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'logic.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  final logic = Get.put(DashboardLogic());
  final state = Get
      .find<DashboardLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardLogic>(builder: (logic) {
      return Scaffold(
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            // border: Border.all(color: AppColors.PRIMARY),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
            // borderRadius: BorderRadius.circular(20)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: BottomNavigationBar(
              // elevation: 0.0,
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Image.asset(AppImages.HOME,color:logic.selectedIndex == 0 ? AppColors.PRIMARY : AppColors.GREY,width: 8.w,),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(AppImages.LOYALTY,color:logic.selectedIndex == 1 ? AppColors.PRIMARY :  AppColors.GREY,width: 8.w,),
                  label: '',
                ),
              ],
              iconSize: 22.sp,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: logic.selectedIndex,
              selectedItemColor: Colors.amber[800],
              onTap: logic.onItemTapped,
            ),
          ),
        ),
        extendBody: true,
        body: Center(
          child: logic.widgetOptions.elementAt(logic.selectedIndex),
        ),
      );
    });
  }
}
