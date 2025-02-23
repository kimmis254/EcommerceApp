import 'package:ecommerceapp/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: EDeviceUtils.getAppBarHeight(),
        right: ESizes.defaultSpace,
        child: TextButton(
            onPressed: () => OnboardingController.instance.skipPage(),
            style: TextButton.styleFrom(
              foregroundColor: EColors.primary,
              textStyle: TextStyle(color: EColors.primary)
            ),
            child: const Text('Skip')
        )
    );
  }
}
