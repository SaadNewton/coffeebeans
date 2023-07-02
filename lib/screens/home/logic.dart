import 'package:coffeebeens/screens/home/view.dart';
import 'package:get/get.dart';

import '../../utils/image-contstants.dart';
import 'state.dart';

class HomeLogic extends GetxController {
  final HomeState state = HomeState();
  List loyaltyMugs = [
    AppImages.LOYALTY_FILL,
    AppImages.LOYALTY_FILL,
    AppImages.LOYALTY_FILL,
    AppImages.LOYALTY_FILL,
    AppImages.LOYALTY_EMPTY,
    AppImages.LOYALTY_EMPTY,
    AppImages.LOYALTY_EMPTY,
    AppImages.LOYALTY_EMPTY,];

  List<GridItem> gridItemList = [
    GridItem(name: 'Americano', image: AppImages.AMERICANO),
    GridItem(name: 'Cappucino', image: AppImages.CAPUCINO),
    GridItem(name: 'Mocha', image: AppImages.MOCHA),
    GridItem(name: 'Flat White', image: AppImages.FLAT_WHITE),
  ];
}
