import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'state.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

}
