import 'package:ecommerceapp/common/widgets/icons/circular_icon.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EProductQuantityAddRemoveButton extends StatelessWidget {
  const EProductQuantityAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ECircularIcon(
            icon: Iconsax.minus,
            width: 32,
            height: 32,
            size: ESizes.md,
            color: EHelperFunctions.isDarkMode(context) ? EColors.white : EColors.black,
            backgroundColor: EHelperFunctions.isDarkMode(context) ? EColors.darkerGrey : EColors.light
        ),
        const SizedBox(width: ESizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: ESizes.spaceBtwItems),
        ECircularIcon(
            icon: Iconsax.add,
            width: 32,
            height: 32,
            size: ESizes.md,
            color: EColors.white,
            backgroundColor: EColors.primary
        ),
      ],
    );
  }
}