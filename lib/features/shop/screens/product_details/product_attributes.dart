import 'package:ecommerceapp/common/widgets/chips/choice_chip.dart';
import 'package:ecommerceapp/common/widgets/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/texts/product_price.dart';
import 'package:ecommerceapp/common/widgets/texts/product_title.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Ensures proper alignment
      children: [
        /// **Variation Container**
        ERoundedContainer(
          padding: const EdgeInsets.all(ESizes.md),
          backgroundColor: dark ? EColors.primary.withOpacity(0.8) : EColors.primary.withOpacity(0.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns content properly
            children: [
              /// **Variation Title**
              ESectionHeading(title: 'Variation', showActionButton: false),
              const SizedBox(height: ESizes.spaceBtwItems),

              /// **Price & Stock Details**
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Prevents overflow
                children: [
                  /// **Price Row**
                  Expanded(
                    child: Row(
                      children: [
                        EProductTitleText(title: 'Price:', smallSize: true),
                        const SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            'Ksh 250',
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        const SizedBox(width: ESizes.spaceBtwItems),
                        const EProductPriceText(price: '175'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8), // Adds spacing between rows

              /// **Stock Information**
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  EProductTitleText(title: 'Stock:', smallSize: true),
                  const SizedBox(width: 5),
                  Flexible(
                    child: Text(
                      'In Stock',
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: ESizes.spaceBtwItems),

              /// **Product Description**
              EProductTitleText(
                title: 'Product Description',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: ESizes.spaceBtwItems),

        /// **Color Selection**
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ESectionHeading(title: 'Colors', space: ESizes.spaceBtwItems * 12,),
            const SizedBox(height: ESizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                EChoiceChip(text: 'Green', selected: true, onSelected: (value) {}),
                EChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
                EChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems),

        /// **Size Selection**
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ESectionHeading(title: 'Size', space: ESizes.spaceBtwItems * 13.5,),
            const SizedBox(height: ESizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                EChoiceChip(text: 'EU 24', selected: true, onSelected: (value) {}),
                EChoiceChip(text: 'EY 36', selected: false, onSelected: (value) {}),
                EChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
