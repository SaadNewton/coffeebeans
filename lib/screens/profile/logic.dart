import 'package:get/get.dart';

import '../../utils/image-contstants.dart';
import 'model/list-model.dart';
import 'state.dart';

class ProfileLogic extends GetxController {
  final ProfileState state = ProfileState();
  List<ProfileListModel> profileList = [
    ProfileListModel(name: 'Anderson', image: AppImages.PERSON, heading: 'Name'),
    ProfileListModel(name: '+60134589525', image: AppImages.PHONE, heading: 'Phone Number'),
    ProfileListModel(name: 'Anderson@email.com ', image: AppImages.SMS, heading: 'Email'),
    ProfileListModel(name: '3 Addersion Court Chino Hills, HO56824, United State', image: AppImages.LOCATION, heading: 'Address'),
  ];
}
