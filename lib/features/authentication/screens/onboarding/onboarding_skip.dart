import 'package:ecommerceapp/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: EDeviceUtils.getAppBarHeight(),
      right: ESizes.defaultSpace,
      child: Container(
        decoration: BoxDecoration(
          color: EColors.primary.withOpacity(0.1), // Soft background for visibility
          borderRadius: BorderRadius.circular(20), // Rounded edges
        ),
        child: TextButton(
          onPressed: () => OnboardingController.instance.skipPage(),
          style: TextButton.styleFrom(
            foregroundColor: EColors.primary,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Adjust padding
            textStyle: const TextStyle(
              fontSize: 16, // Increased text size
              fontWeight: FontWeight.bold, // Make it stand out
            ),
          ),
          child: const Text('Skip'),
        ),
      ),
    );
  }
}
