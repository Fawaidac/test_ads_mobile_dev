import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_ads/app/modules/onboarding/views/widget/onboarding_first_widget.dart';
import 'package:test_ads/app/modules/onboarding/views/widget/onboarding_second_widget.dart';
import 'package:test_ads/app/routes/app_pages.dart';
import 'package:test_ads/core/theme/app_colors.dart';

import '../../../../core/theme/app_fonts.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  OnboardingView({Key? key}) : super(key: key);

  final PageController _controller = PageController();

  @override
  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) {
              controller.onLastPage.value = (value == 1);
            },
            children: const [
              OnBoardingFirst(),
              OnBoardingSecond(),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.only(bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(1);
                    },
                    child: Text(
                      "Skip",
                      style: AppFonts.overpass(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 2,
                    effect: SlideEffect(
                      dotWidth: 8,
                      dotHeight: 8,
                      activeDotColor: greenColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (controller.onLastPage.value) {
                        Get.offAllNamed(Routes.WELCOME);
                      } else {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    child: Text(
                      "Next",
                      style: AppFonts.overpass(
                        fontSize: 14,
                        color: greenColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
