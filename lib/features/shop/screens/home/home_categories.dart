import 'package:ecommerceapp/common/widgets/image_texts/vertical_image_text.dart';
import 'package:ecommerceapp/features/shop/screens/sub_category/sub_categories.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class EHomeCategories extends StatelessWidget {
  const EHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return EVerticalImageText(
              image: EImages.produceIcon,
              title: 'Fresh Produce',
              onTap: () => Get.to(() => const SubCategoriesScreen()),
            );
          }),
    );
  }
}