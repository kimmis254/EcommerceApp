import 'package:ecommerceapp/common/widgets/product/cart/add_remove_button.dart';
import 'package:ecommerceapp/common/widgets/product/cart/cart_item.dart';
import 'package:ecommerceapp/common/widgets/texts/product_price.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECartItems extends StatelessWidget {
  const ECartItems({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: ESizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          ECartItem(),
          if(showAddRemoveButton) const SizedBox(height: ESizes.spaceBtwItems),

          if(showAddRemoveButton)
            const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),
                  EProductQuantityAddRemoveButton(),
                ],
              ),
              EProductPriceText(price: '25')
            ],
          )
        ],
      ),
    );
  }
}
