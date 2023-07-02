import 'package:coffeebeens/screens/cart/view.dart';
import 'package:coffeebeens/screens/dashboard/view.dart';
import 'package:coffeebeens/screens/forgot_password/view.dart';
import 'package:coffeebeens/screens/login/view.dart';
import 'package:coffeebeens/screens/onboarding/view.dart';
import 'package:coffeebeens/screens/profile/view.dart';
import 'package:get/get.dart';

import '../screens/calling/view.dart';
import '../screens/order_tracking/view.dart';
import '../screens/otp/view.dart';
import '../screens/productview/view.dart';
import '../screens/redeem/view.dart';
import '../screens/signup/view.dart';
import '../screens/splash/view.dart';
import '../screens/success_order/view.dart';

class Routes {
  static const SPLASH = '/home';
  static const ONBOARDING = '/onboarding';
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
  static const FORGOT = '/forgot';
  static const DASHBOARD = '/dashboard';
  static const PRODUCTVIEW = '/productView';
  static const CART = '/cart';
  static const SUCCESS_ORDER = '/success_order';
  static const ORDER_TRACKING = '/order_tracking';
  static const CALL = '/call';
  static const PROFILE = '/profile';
  static const REDEEM = '/redeem';
  static const OTP = '/otp';


  static final routes = [
    GetPage(
        name: Routes.SPLASH,
      page: () => SplashPage(),
    ),
    GetPage(
      name: Routes.ONBOARDING,
      page: () => OnboardingPage(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignupPage(),
    ),
    GetPage(
      name: Routes.FORGOT,
      page: () => ForgotPasswordPage(),
    ),
    GetPage(
      name: Routes.OTP,
      page: () => OtpPage(),
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardPage(),
    ),
    GetPage(
      name: Routes.PRODUCTVIEW,
      // parameters: ,
      page: () => ProductviewPage(name: Get.parameters['name']!,image: Get.parameters['image']!,),
      transition: Transition.downToUp,
      transitionDuration: Duration(milliseconds: 300)
    ),
    GetPage(
      name: Routes.CART,
      page: () => CartPage(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: Duration(milliseconds: 300)
    ),
    GetPage(
      name: Routes.SUCCESS_ORDER,
      page: () => Success_orderPage(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: Duration(milliseconds: 300)
    ),
    GetPage(
      name: Routes.ORDER_TRACKING,
      page: () => Order_trackingPage(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: Duration(milliseconds: 300)
    ),
    GetPage(
      name: Routes.CALL,
      page: () => CallingPage(),
      transition: Transition.circularReveal,
      transitionDuration: Duration(milliseconds: 300)
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfilePage(),
      transition: Transition.circularReveal,
      transitionDuration: Duration(milliseconds: 300)
    ),GetPage(
      name: Routes.REDEEM,
      page: () => RedeemPage(),
      transition: Transition.circularReveal,
      transitionDuration: Duration(milliseconds: 300)
    ),
  ];
}