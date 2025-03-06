import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/common/widgets/containers/circular_container.dart';
import 'package:ecommerceapp/common/widgets/images/rounded_images.dart';
import 'package:ecommerceapp/features/shop/controllers/home_controller.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EPromoSlider extends StatelessWidget {
  const EPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true, // Enables auto sliding
            autoPlayInterval: const Duration(seconds: 3), // Time before the next slide
            autoPlayAnimationDuration: const Duration(milliseconds: 800), // Smooth transition time
            autoPlayCurve: Curves.easeInOut, // Smooth transition effect
            enableInfiniteScroll: true, // Loop slides infinitely
            enlargeCenterPage: true,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners
              .map((url) => ERoundedImage(imageUrl: url))
              .toList(),
        ),
        const SizedBox(height: ESizes.spaceBtwItems),
        Center(
          child: Obx(
                () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  ECircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? EColors.primary
                        : EColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
