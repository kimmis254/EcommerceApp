import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/product/product_rating/rating_indicator.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/overall_rating.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/product_ratings.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/user_review_card.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ratings and Reviews are verified and are from people who use the same type of device yu use'),
              SizedBox(height: ESizes.spaceBtwItems),

              EOverallRatingIndicator(),
              ERatingBarIndicator(rating: 4.8),
              Text('199', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: ESizes.spaceBtwSections),

              const UserReviewCard(),
              const UserReviewCard(),

            ],
          ),
        ),
      ),


    );
  }
}






