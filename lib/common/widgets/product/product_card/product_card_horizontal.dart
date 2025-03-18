import 'package:ecommerceapp/common/styles/shadow_style.dart';
import 'package:ecommerceapp/common/widgets/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/icons/circular_icon.dart';
import 'package:ecommerceapp/common/widgets/images/rounded_images.dart';
import 'package:ecommerceapp/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:ecommerceapp/common/widgets/texts/product_price.dart';
import 'package:ecommerceapp/common/widgets/texts/product_title.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EProductCardHorizontal extends StatelessWidget {
  const EProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return  Container(
          width: 310,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ESizes.productImageRadius),
              color: EHelperFunctions.isDarkMode(context)
                  ? EColors.darkerGrey
                  : EColors.softGrey),
      child: Row(
        children: [
          ERoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(ESizes.sm),
            backgroundColor: dark ? EColors.dark : EColors.light,
            child: Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: ERoundedImage(
                      imageUrl: EImages.kale,
                      applyImageRadius: true),
                ),
                Positioned(
                  top: 12,
                  child: ERoundedContainer(
                    radius: ESizes.sm,
                    backgroundColor: EColors.secondary.withOpacity(0.8),
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
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: const ECircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ))
              ],
            ),
          ),

          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: ESizes.sm, left: ESizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EProductTitleText(title: 'Bunch of Sukuma Wiki', smallSize: true),
                      SizedBox(height: ESizes.spaceBtwItems/ 2),
                      EBrandTitleWithVerifiedIcon(title: 'FreshPoint')
                    ],
                  ),

                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: EProductPriceText(price: '25')),

                      Container(
                        decoration: BoxDecoration(
                          color: EColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ESizes.cardRadiusMd),
                            bottomRight:
                            Radius.circular(ESizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                            width: ESizes.iconLg * 1.2,
                            height: ESizes.iconLg * 1.2,
                            child: Center(
                                child: Icon(Iconsax.add, color: EColors.white))),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
