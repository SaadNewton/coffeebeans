import 'package:coffeebeens/utils/color-constant.dart';
import 'package:coffeebeens/utils/image-contstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'model/onboarding-contents.dart';
import 'state.dart';

class OnboardingLogic extends GetxController {
  final OnboardingState state = OnboardingState();
  int currentPage = 0;
  late PageController controller;

  List<OnboardingContents> contents = [
    OnboardingContents(
      title: "Track Your work and get the result",
      image: AppImages.ONBOARDINGLOGO,
      desc: "Remember to keep track of your professional accomplishments.",
    ),
    OnboardingContents(
      title: "Stay organized with team",
      image: AppImages.ONBOARDINGLOGO,
      desc:
      "But understanding the contributions our colleagues make to our teams and companies.",
    ),
    OnboardingContents(
      title: "Get notified when work happens",
      image: AppImages.ONBOARDINGLOGO,
      desc:
      "Take control of notifications, collaborate live or on your own time.",
    ),
  ];

  AnimatedContainer buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        color:currentPage == index ? AppColors.PRIMARY : AppColors.GREY,
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: currentPage == index ? 20 : 10,
    );
  }
}
