import 'package:ecommerceapp/bottom_navigation.dart';
import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/product/coupons/coupon_card.dart';
import 'package:ecommerceapp/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerceapp/features/shop/screens/cart/cart_items.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/billing_address.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/billing_amount_section.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/billing_payment.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: EAppBar(
        showBackArrow: true,
        title: Text('Order Summary',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              ECartItems(showAddRemoveButton: false),
              const SizedBox(height: ESizes.spaceBtwSections),
              ECouponCode(),
              const SizedBox(height: ESizes.spaceBtwSections),
              ERoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(ESizes.md),
                backgroundColor: dark ? EColors.black : EColors.white,
                child: Column(
                  children: [
                    const EBillingAmountSection(),
                    const SizedBox(height: ESizes.spaceBtwItems),
                    const Divider(),
                    const SizedBox(height: ESizes.spaceBtwItems),
                    const EBillingPaymentSection(),
                    const SizedBox(height: ESizes.spaceBtwItems),
                    const EBillingAddressSection(),
                    const SizedBox(height: ESizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                image: EImages.successScreen,
                title: 'Payment Successful',
                subTitle: 'Your item is on the way!',
                onPressed: () => Get.offAll(() => const BottomNavigation()))),
            style: ElevatedButton.styleFrom(
                backgroundColor: EColors.primary,
                foregroundColor: EHelperFunctions.isDarkMode(context)
                    ? EColors.white
                    : EColors.black,
                side: BorderSide(color: Colors.transparent)),
            child: Text('Checkout Ksh100')),
      ),
    );
  }
}
