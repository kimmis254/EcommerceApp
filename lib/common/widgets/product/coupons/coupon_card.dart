import 'package:ecommerceapp/common/widgets/containers/rounded_container.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ECouponCode extends StatelessWidget {
  const ECouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return ERoundedContainer(
      showBorder: true,
      backgroundColor: dark ? EColors.black : EColors.white,
      padding: const EdgeInsets.only(
          top: ESizes.sm,
          bottom: ESizes.sm,
          right: ESizes.sm,
          left: ESizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter here!',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
              width: 70,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: EColors.primary,
                      foregroundColor: dark
                          ? EColors.white.withOpacity(0.5)
                          : EColors.dark.withOpacity(0.5),
                      side: BorderSide(color: Colors.grey.withOpacity(0.1))),
                  child: const Text('Apply')))
        ],
      ),
    );
  }
}