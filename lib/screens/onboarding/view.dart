import 'package:coffeebeens/routes/app-routes.dart';
import 'package:coffeebeens/utils/color-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'logic.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final logic = Get.put(OnboardingLogic());
  final state = Get
      .find<OnboardingLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    double width = 100.w;
    double height = 100.h;
    return GetBuilder<OnboardingLogic>(
      initState: (_){
        logic.controller = PageController();
      },
        builder: (logic) {
         return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: logic.controller,
                      onPageChanged: (value){
                        logic.currentPage = value;
                        logic.update();
                      },
                      itemCount: logic.contents.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              Image.asset(
                                logic.contents[i].image,
                                height: 35.h,
                                width: 35.w,
                              ),
                              SizedBox(
                                height: (height >= 840) ? 60 : 30,
                              ),
                              Text(
                                logic.contents[i].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: (width <= 550) ? 30 : 35,
                                ),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                logic.contents[i].desc,
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: (width <= 550) ? 17 : 25,
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            logic.contents.length,
                                (int index) => logic.buildDots(
                              index: index,
                            ),
                          ),
                        ),
                        logic.currentPage + 1 == logic.contents.length
                            ? Padding(
                          padding: const EdgeInsets.all(30),
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(Routes.LOGIN);
                            },
                            child: const Text("START"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.PRIMARY,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: (width <= 550)
                                  ? const EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 20)
                                  : EdgeInsets.symmetric(
                                  horizontal: width * 0.2, vertical: 25),
                              textStyle:
                              TextStyle(fontSize: (width <= 550) ? 13 : 17),
                            ),
                          ),
                        )
                            : Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              
                              InkWell(
                                onTap:(){
                                  logic.controller.nextPage(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.PRIMARY,
                                    shape: BoxShape.circle
                                  ),
                                  padding: EdgeInsets.all(10.sp),
                                  child: Icon(Icons.arrow_forward,color: AppColors.WHITE,),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
    });
  }
}


