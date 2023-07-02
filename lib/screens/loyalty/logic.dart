import 'package:coffeebeens/utils/image-contstants.dart';
import 'package:get/get.dart';

import 'models/reward-model.dart';
import 'state.dart';

class LoyaltyLogic extends GetxController {
  final LoyaltyState state = LoyaltyState();
  List loyaltyMugs = [
    AppImages.LOYALTY_FILL,
    AppImages.LOYALTY_FILL,
    AppImages.LOYALTY_FILL,
    AppImages.LOYALTY_FILL,
    AppImages.LOYALTY_EMPTY,
    AppImages.LOYALTY_EMPTY,
    AppImages.LOYALTY_EMPTY,
    AppImages.LOYALTY_EMPTY,];
  
  List<RewardModel> rewardList = [
    RewardModel(drink: 'Americano', date: '24 June | 12:30 PM', points: '+ 12 Pts'),
    RewardModel(drink: 'Cafe Latte', date: '24 June | 12:30 PM', points: '+ 18 Pts'),
    RewardModel(drink: 'Green Tea Latte', date: '24 June | 12:30 PM', points: '+ 6 Pts'),
    RewardModel(drink: 'Flat White', date: '24 June | 12:30 PM', points: '+ 10 Pts'),
  ];
}
