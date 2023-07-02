import 'package:coffeebeens/screens/cart/widgets/bottom-bar.dart';
import 'package:coffeebeens/screens/cart/widgets/item-list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../utils/color-constant.dart';
import '../../widgets/custom-appbar.dart';
import 'logic.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  final logic = Get.put(CartLogic());
  final state = Get
      .find<CartLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartLogic>(builder: (logic) {
      return Scaffold(
        backgroundColor: AppColors.WHITE,
        appBar: PreferredSize(
          preferredSize: Size(100.w, 6.h),
          child: AppBarWidget().buildAppBar(),
        ),
        bottomNavigationBar: PreferredSize(
          preferredSize: Size(100.w, 6.h),
          child: BottomNavBar().BottomNavBarWidget(),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10.sp),
                child: Text('My Cart',style: TextStyle(
                  color: AppColors.PRIMARY,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp
                ),),
              ),

              ItemList().ItemListWidget()

            ],
          ),
        ),
      );
    });
  }
}

class itemModel{
  final String name;
  final String image;
  final String description;
  final String price;

  itemModel({required this.name,required this.image,required this.description,required this.price});
}