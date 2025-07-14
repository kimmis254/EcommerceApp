import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';
import 'onboarding_page.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({
    super.key,
    required this.controller,
  });

  final OnboardingController controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
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
    );
  }
}