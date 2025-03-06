import 'package:ecommerceapp/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/device/device_utility.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Positioned(
      right: ESizes.defaultSpace,
      bottom: EDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? EColors.primary : Colors.black, // Set button color
          padding: const EdgeInsets.all(16), // Adjust padding for better UI
          elevation: 4, // Slight shadow for depth
          shadowColor: dark ? Colors.black : Colors.grey.withOpacity(0.5), // Adjust shadow color
          side: BorderSide(color: Colors.transparent), // Remove blue border in light mode
        ),
        child: Icon(
          Iconsax.arrow_right_3,
          color: dark ? EColors.black : EColors.primary, // Make the arrow match the theme
          size: 24, // Slightly increase icon size for visibility
        ),
      ),
    );
  }
}
