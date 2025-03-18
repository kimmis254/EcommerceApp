import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/images/rounded_images.dart';
import 'package:ecommerceapp/common/widgets/product/product_card/product_card_horizontal.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppBar(
        title: Text('Fruits and Vegetables'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              const ERoundedImage(
                  imageUrl: EImages.banner3,
                  height: null,
                  width: double.infinity,
                  applyImageRadius: true
              ),
              const SizedBox(height: ESizes.spaceBtwSections),
              
              Column(
                children: [
                  ESectionHeading(title: 'Vegetables', onPressed: (){}, space: ESizes.spaceBtwItems * 4),
                  const SizedBox(height: ESizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      separatorBuilder: (context, index) => const SizedBox(width: ESizes.spaceBtwItems),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const EProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
