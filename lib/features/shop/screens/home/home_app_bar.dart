import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/product/cart/cart_counter.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class EHomeAppBar extends StatelessWidget {
  const EHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ETexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: EColors.grey),
          ),
          Text(
            ETexts.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: EColors.white),
          ),
        ],
      ),
      actions: [
        ECartCounterIcon(onPressed: () {}, iconColor: EColors.white ,)
      ],
    );
  }
}