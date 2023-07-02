import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'state.dart';

class SignupLogic extends GetxController {
  final SignupState state = SignupState();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

}
