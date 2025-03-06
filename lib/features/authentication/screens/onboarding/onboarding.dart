import 'package:ecommerceapp/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding/onboarding_dot_navigation.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding/onboarding_next_button.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding/onboarding_page.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding/onboarding_skip.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:ecommerceapp/utils/device/device_utility.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingScreen(
                image: EImages.onBoarding1,
                title: ETexts.onBoardingTitle1,
                subTitle: ETexts.onBoardingSubTitle1,
              ),
              OnBoardingScreen(
                image: EImages.onBoarding2,
                title: ETexts.onBoardingTitle2,
                subTitle: ETexts.onBoardingSubTitle2,
              ),
              OnBoardingScreen(
                image: EImages.onBoarding3,
                title: ETexts.onBoardingTitle3,
                subTitle: ETexts.onBoardingSubTitle3,
              )
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}


