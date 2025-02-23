import 'package:ecommerceapp/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/device/device_utility.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
        right: ESizes.defaultSpace,
        bottom: EDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnboardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? EColors.primary:  Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}