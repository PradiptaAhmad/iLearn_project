import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilearn_project/core/themes.dart';
import 'package:ilearn_project/pages/onboarding/data/onBoardingData.dart';
import 'package:ilearn_project/pages/onboarding/widget/endButton.dart';
import 'package:ilearn_project/pages/onboarding/widget/onBoardWidget.dart';

import '../controller/onboarding_controller.dart';

class OnBoardingPageView extends GetView<OnBoardingController> {
  OnBoardingPageView({super.key});

  // GetX State Management
  final PageController _pageController = PageController();
  final List<Map<String, String>> onboardingData = OnBoardingData().dataArrays;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                controller.currentPage.value = index;
              },
              itemCount: onboardingData.length,
              itemBuilder: (context, index) {
                return OnBoardWidget(
                  image: onboardingData[index]['image']!,
                  title: onboardingData[index]['title']!,
                  description: onboardingData[index]['description']!,
                );
              },
            ),
          ),
          // Add pagination dots
          Obx(() => Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onboardingData.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: controller.currentPage.value == index
                                ? primaryColor // Active dot color
                                : inActiveColor, // Inactive dot color
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )),
          Obx(() => controller.currentPage.value == 2
              ? EndButton(
                  onPressed: () {
                    controller.switchToLoginPage();
                  },
                  color: primaryColor)
              : SizedBox(
                  height: 65,
                ))
        ],
      ),
    );
  }
}
