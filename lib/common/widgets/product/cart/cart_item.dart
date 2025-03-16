import 'package:ecommerceapp/common/widgets/images/rounded_images.dart';
import 'package:ecommerceapp/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:ecommerceapp/common/widgets/texts/product_title.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ECartItem extends StatelessWidget {
  const ECartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ERoundedImage(
          imageUrl: EImages.kale,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(ESizes.sm),
          backgroundColor: EHelperFunctions.isDarkMode(context)
              ? EColors.darkerGrey
              : EColors.light,
        ),
        const SizedBox(width: ESizes.spaceBtwItems),

        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const EBrandTitleWithVerifiedIcon(title: 'FreshPoint'),
            Flexible(child: const EProductTitleText(title: 'Sukuma Wiki', maxLines: 1)),
            Text.rich(
                TextSpan(
                    children:[
                      TextSpan(text: 'Color: ', style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                      TextSpan(text: 'Size: ', style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: '25 Pieces', style: Theme.of(context).textTheme.bodyLarge),
                    ]
                )
            )
          ],
        )
      ],
    );
  }
}
