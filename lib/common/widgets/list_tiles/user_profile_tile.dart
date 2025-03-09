import 'package:ecommerceapp/common/widgets/images/circular_image.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EUserProfileTile extends StatelessWidget {
  const EUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ECircularImage(
        image: EImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Wayne Kathanzu', style: Theme.of(context).textTheme.headlineSmall!.apply(color: EColors.white)),
      subtitle: Text('kimmis254@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: EColors.white)),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Iconsax.edit, color: EColors.white)),
    );
  }
}