import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/curved_edges/curved_edge_widget.dart';
import 'package:ecommerceapp/common/widgets/icons/circular_icon.dart';
import 'package:ecommerceapp/common/widgets/images/rounded_images.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EProductImageSlider extends StatelessWidget {
  const EProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return ECurvedEdgeWidget(
      child: Container(
        color: dark ? EColors.primary : EColors.primary.withOpacity(0.6),
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding:
                const EdgeInsets.all(ESizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(EImages.kale))),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 30,
              left: ESizes.defaultSpace,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      separatorBuilder: (_, __) =>
                      const SizedBox(width: ESizes.spaceBtwItems),
                      itemCount: 4,
                      itemBuilder: (_, index) => ERoundedImage(
                          width: 60,
                          backgroundColor: dark ? EColors.primary : EColors.primary.withOpacity(0.6),
                          border: Border.all(color: EColors.black),
                          padding: const EdgeInsets.all(ESizes.sm / 6),
                          imageUrl: EImages.banana),
                    ),
                  ),
                ],
              ),
            ),

            EAppBar(
              showBackArrow: true,
              actions: [
                ECircularIcon(icon: Iconsax.heart5, color: Colors.red)
              ],
            )

          ],
        ),
      ),
    );
  }
}