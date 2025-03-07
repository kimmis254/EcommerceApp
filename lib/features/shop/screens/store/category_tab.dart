import 'package:ecommerceapp/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceapp/common/widgets/product/product_card/brand_showcase.dart';
import 'package:ecommerceapp/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            EBrandShowCase(images: [EImages.kale, EImages.banana, EImages.tomato]),
            const SizedBox(height:  ESizes.spaceBtwItems,),
      
            ESectionHeading(title: 'You might like', onPressed: () {},),
            const SizedBox(height:  ESizes.spaceBtwItems,),
      
            EGridLayout(itemCount: 4, itemBuilder: (_, index) => EProductCardVertical()),
            const SizedBox(height:  ESizes.spaceBtwSections,),

          ],
        ),
      ),
    ]
    );
  }
}
