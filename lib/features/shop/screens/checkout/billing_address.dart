import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EBillingAddressSection extends StatelessWidget {
  const EBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ESectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}, space: ESizes.spaceBtwItems * 2.8),
        Text('Wayne Kathanzu', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: ESizes.spaceBtwSections / 2),

        Row(
          children: [
            const Icon(Icons.phone, color: EColors.primary, size: 16),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text('0712345678', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwSections / 2),

        Row(
          children: [
            const Icon(Icons.location_history, color: EColors.primary, size: 16),
            const SizedBox(width: ESizes.spaceBtwItems),
            Expanded(child: Text('Nyayo Estate Gate D, Nairobi, Kenya', style: Theme.of(context).textTheme.bodyMedium, softWrap: true)),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwSections / 2),

      ],
    );
  }
}
