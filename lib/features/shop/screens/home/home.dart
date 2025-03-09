import 'package:ecommerceapp/common/widgets/containers/primary_header_container.dart';
import 'package:ecommerceapp/common/widgets/containers/search_container.dart';
import 'package:ecommerceapp/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceapp/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/features/shop/screens/home/home_app_bar.dart';
import 'package:ecommerceapp/features/shop/screens/home/home_categories.dart';
import 'package:ecommerceapp/features/shop/screens/home/promo_slider.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme
        .of(context)
        .brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
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
                  SizedBox(height: ESizes.spaceBtwSections,)

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  const EPromoSlider(
                    banners: [
                      EImages.banner1,
                      EImages.banner2,
                      EImages.banner3,
                    ],
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),

                  ESectionHeading(title: 'Popular Products', onPressed: () {},),
                  const SizedBox(height: ESizes.spaceBtwItems),

                  EGridLayout(itemCount: 4,itemBuilder: (_,index) => const EProductCardVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


