import 'package:get/get.dart';

import '../../utils/image-contstants.dart';
import 'model/list-model.dart';
import 'state.dart';

class RedeemLogic extends GetxController {
  final RedeemState state = RedeemState();
  List<ListRedeemModel> redeemList = [
    ListRedeemModel(image: AppImages.AMERICANO, drink: 'Cafe Latte', validity: 'Valid until 04.07.21', points: '1390'),
    ListRedeemModel(image: AppImages.FLAT_WHITE, drink: 'Flat White', validity: 'Valid until 04.07.21', points: '1230'),
    ListRedeemModel(image: AppImages.CAPUCINO, drink: 'Cappuccino', validity: 'Valid until 04.07.21', points: '1480'),
    // ListRedeemModel(image: AppImages.AMERICANO, drink: 'Cafe Latte', validity: 'Valid until 04.07.21', points: '1390'),
  ];
}
