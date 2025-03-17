import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EBillingAmountSection extends StatelessWidget {
  const EBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('Ksh 100', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems / 2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Delivery Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('Ksh 10', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems / 2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Taxes', style: Theme.of(context).textTheme.bodyMedium),
            Text('Ksh 10', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems / 2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('Ksh 120', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems / 2),

      ],
    );
  }
}
