import 'package:ecommerceapp/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding/onboarding_dot_navigation.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding/onboarding_next_button.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding/onboarding_page.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding/onboarding_skip.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'onboarding_pages.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          OnBoardingPages(controller: controller),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}




