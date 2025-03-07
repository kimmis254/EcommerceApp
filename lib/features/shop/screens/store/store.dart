import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/containers/search_container.dart';
import 'package:ecommerceapp/common/widgets/images/circular_image.dart';
import 'package:ecommerceapp/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceapp/common/widgets/product/cart/cart_counter.dart';
import 'package:ecommerceapp/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/enums.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          ECartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: EHelperFunctions.isDarkMode(context) ? Colors.black : Colors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(ESizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: ESizes.spaceBtwItems),
                      ESearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: ESizes.spaceBtwSections),
                      ESectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(height: ESizes.spaceBtwItems / 1.5),
                      EGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index){
                            return GestureDetector(
                              onTap: () {},
                              child: ERoundedContainer(
                                padding: const EdgeInsets.all(ESizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: ECircularImage(
                                        isNetworkImage: false,
                                        image: EImages.produceIcon,
                                        backgroundColor: Colors.transparent,
                                        overlayColor: EHelperFunctions.isDarkMode(context)
                                            ? EColors.white
                                            : EColors.black,
                                      ),
                                    ),
                                    const SizedBox(width: ESizes.spaceBtwItems / 2),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          EBrandTitleWithVerifiedIcon(
                                              title: 'FreshPoint',
                                              brandTextSizes: TextSizes.large
                                          ),
                                          Text(
                                            '200 products',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context).textTheme.labelMedium,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
