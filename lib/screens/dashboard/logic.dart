import 'dart:ui';

import 'package:coffeebeens/screens/home/view.dart';
import 'package:coffeebeens/screens/loyalty/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../utils/color-constant.dart';
import 'state.dart';

class DashboardLogic extends GetxController {
  final DashboardState state = DashboardState();
  int selectedIndex = 0;
  static TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: AppColors.PRIMARY);
  List<Widget> widgetOptions = <Widget>[
    HomePage(),
    LoyaltyPage(),
  ];

  void onItemTapped(int index) {

      selectedIndex = index;
      update();
  }

}
