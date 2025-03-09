import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/icons/circular_icon.dart';
import 'package:ecommerceapp/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceapp/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:ecommerceapp/features/shop/screens/home/home.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';


class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text('Wishlist', style: Theme
            .of(context)
            .textTheme
            .headlineMedium),
        actions: [
          ECircularIcon(
            icon: Iconsax.add,
              onPressed: () {
                Get.offAll(() => const HomeScreen()); // Clears navigation stack
              },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              EGridLayout(
                  itemCount: 8,
                  itemBuilder: (_, index) => const EProductCardVertical()
              )
            ],
          ),
        ),
      ),

    );
  }
}
