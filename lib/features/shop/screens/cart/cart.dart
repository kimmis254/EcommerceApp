import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/icons/circular_icon.dart';
import 'package:ecommerceapp/common/widgets/images/rounded_images.dart';
import 'package:ecommerceapp/common/widgets/product/cart/add_remove_button.dart';
import 'package:ecommerceapp/common/widgets/product/cart/cart_item.dart';
import 'package:ecommerceapp/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:ecommerceapp/common/widgets/texts/product_price.dart';
import 'package:ecommerceapp/common/widgets/texts/product_title.dart';
import 'package:ecommerceapp/features/shop/screens/cart/cart_items.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/checkout.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(ESizes.defaultSpace),


        child: ECartItems()
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            style: ElevatedButton.styleFrom(
              backgroundColor: EColors.primary,
              foregroundColor: EHelperFunctions.isDarkMode(context) ? EColors.white : EColors.black,
              side: BorderSide(color: Colors.transparent)
            ),
            child: Text('Checkout Ksh100')),
      ),
    );
  }
}
