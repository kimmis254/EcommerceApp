import 'package:ecommerceapp/common/widgets/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EBillingPaymentSection extends StatelessWidget {
  const EBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ESectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){}, space: ESizes.spaceBtwItems * 3.2),
        const SizedBox(height: ESizes.spaceBtwItems),

        Row(
          children: [
            ERoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: EHelperFunctions.isDarkMode(context) ? EColors.light : EColors.white,
              padding: const EdgeInsets.all(ESizes.sm),
              child: const Image(image: AssetImage(EImages.mpesa), fit: BoxFit.contain),
            ),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text('MPesa', style: Theme.of(context).textTheme.bodyLarge),

          ],
        )
      ],

    );
  }
}
