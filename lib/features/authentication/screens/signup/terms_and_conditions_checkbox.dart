import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ETermsAndConditions extends StatelessWidget {
  const ETermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: ESizes.spaceBtwInputFields),

        Expanded( // Ensures text doesn't overflow
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${ETexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: screenWidth * 0.035, // Adjust size dynamically
                  ),
                ),
                TextSpan(
                  text: '${ETexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: screenWidth * 0.035,
                    color: dark ? EColors.white : EColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? EColors.white : EColors.primary,
                  ),
                ),
                TextSpan(
                  text: '${ETexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: screenWidth * 0.035,
                  ),
                ),
                TextSpan(
                  text: ETexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: screenWidth * 0.035,
                    color: dark ? EColors.white : EColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? EColors.white : EColors.primary,
                  ),
                ),
              ],
            ),
            softWrap: true, // Ensures text wraps
            overflow: TextOverflow.fade, // Prevents overflow errors
          ),
        ),
      ],
    );
  }
}
