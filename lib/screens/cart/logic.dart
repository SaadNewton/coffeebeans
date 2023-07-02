import 'package:coffeebeens/screens/cart/view.dart';
import 'package:coffeebeens/utils/image-contstants.dart';
import 'package:get/get.dart';

import 'state.dart';

class CartLogic extends GetxController {
  final CartState state = CartState();
  
  List<itemModel> itemList = [
    itemModel(name: 'Americano', image: AppImages.AMERICANO, description: 'Single | Medium | Iced', price: '3.00'),
    itemModel(name: 'Capucino', image: AppImages.CAPUCINO, description: 'Single | Large | Hot', price: '6.00'),
    itemModel(name: 'Mocha', image: AppImages.MOCHA, description: 'Single | Medium | Normal', price: '3.00'),
  ];
}
