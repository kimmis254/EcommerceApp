import 'package:ecommerceapp/common/widgets/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/images/circular_image.dart';
import 'package:ecommerceapp/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:ecommerceapp/common/widgets/texts/product_price.dart';
import 'package:ecommerceapp/common/widgets/texts/product_title.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/enums.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EProductMetaData extends StatelessWidget {
  const EProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ERoundedContainer(
              radius: ESizes.sm,
              backgroundColor: Colors.amber.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: ESizes.sm, vertical: ESizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: EColors.black),
              ),
            ),
            const SizedBox(width: ESizes.spaceBtwItems,),

             Text('Ksh 250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: ESizes.spaceBtwItems,),
            
            EProductPriceText(price: '175', isLarge: true,)
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems / 1.5),

         EProductTitleText(title: 'Sukuma Wiki Bunch'),
        const SizedBox(height: ESizes.spaceBtwItems / 1.5),

        Row(
          children: [
            EProductTitleText(title: 'Status'),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(height: ESizes.spaceBtwItems / 1.5),
        
        Row(
          children: [
            ECircularImage(
              image: EImages.produceIcon,
            width: 32,
            height: 32,),
            EBrandTitleWithVerifiedIcon(title: 'FreshPoint', brandTextSizes: TextSizes.medium),
          ],
        )

      ],
    );
  }
}
