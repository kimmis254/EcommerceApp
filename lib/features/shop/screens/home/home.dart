import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/common/widgets/containers/circular_container.dart';
import 'package:ecommerceapp/common/widgets/containers/primary_header_container.dart';
import 'package:ecommerceapp/common/widgets/containers/search_container.dart';
import 'package:ecommerceapp/common/widgets/image_texts/vertical_image_text.dart';
import 'package:ecommerceapp/common/widgets/images/rounded_images.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/features/shop/screens/home/home.dart';
import 'package:ecommerceapp/features/shop/screens/home/home_app_bar.dart';
import 'package:ecommerceapp/features/shop/screens/home/home_categories.dart';
import 'package:ecommerceapp/features/shop/screens/home/promo_slider.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  const EHomeAppBar(),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  const ESearchContainer(text: 'Search in here'),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  Padding(
                    padding: const EdgeInsets.only(left: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        ESectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: EColors.white,
                        ),
                        const SizedBox(height: ESizes.spaceBtwItems),
                        const EHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: const  EPromoSlider(
                banners: [
                  EImages.banner1,
                  EImages.banner2,
                  EImages.banner3,
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}



