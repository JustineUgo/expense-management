import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:nubiaville_management/app/custom/widget/onboard/onboard.dart';
import 'package:nubiaville_management/app/util/images/images.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: LiquidSwipe(
        enableLoop: false,
        enableSideReveal: false,
        liquidController: controller.controller,
        pages: [
          OnboardScreen(
            image: Images.onboardEmployee,
            title: "Employee Report ",
            subTitle:
                'Recieve loans immediately after apply for it. We make it fast!',
            index: 0,
            onNext: () {},
            onSkip: () {},
          ),
          // OnboardScreen(
          //   image: onboardTwo,
          //   title: "Keep track \nof loans",
          //   subTitle: 'Comfortably glance through your transactions',
          //   index: 1,
          //   bgColor: controller.colors[1],
          //   controller: controller.controller,
          // ),
          // OnboardScreen(
          //   image: onboardThree,
          //   bgColor: onboard,
          //   title: "Get started",
          //   subTitle: 'With our encrypted channel, create an account and botherless about security',
          //   index: 2,
          //   controller: controller.controller,
          // ),
        ],
      ),
    ));
  }
}
