import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/curved_edges/curved_edge_widget.dart';
import 'package:ecommerceapp/common/widgets/icons/circular_icon.dart';
import 'package:ecommerceapp/common/widgets/images/rounded_images.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/bottom_add_cart.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/product_attributes.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/product_image_slider.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/product_metadata.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/rating_share_widget.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: EBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(
                right: ESizes.defaultSpace,
                left: ESizes.defaultSpace,
                bottom: ESizes.defaultSpace,
              ),
              child: Column(
                children: [
                  const ERatingAndShare(),
                  const EProductMetaData(),
                  const ProductAttributes(),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  ESectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  ReadMoreText(
                      'This is a bunch of sukuma wiki freshly picked from Machakos Farm everyday for the best quality',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show More',
                  trimExpandedText: 'Show Less',
                    moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  const Divider(),
                  const SizedBox(height: ESizes.spaceBtwItems),

                  Row(
                    children: [
                      ESectionHeading(title: 'Reviews(199)', showActionButton: false),
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34, size: 18)),
                    ],
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections / 2),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
