import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/icons/circular_icon.dart';
import 'package:ecommerceapp/common/widgets/images/circular_image.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/features/personalization/screens/profile/profile_menu.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    ECircularImage(
                      image: EImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),
              const SizedBox(height: ESizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ESizes.spaceBtwItems),
              ESectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: ESizes.spaceBtwItems),
              EProfileMenu(
                  title: 'Name', value: 'Wayne Kathanzu', onPressed: () {}),
              EProfileMenu(title: 'Username', value: 'wayne', onPressed: () {}),
              const SizedBox(height: ESizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ESizes.spaceBtwItems),
              ESectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: ESizes.spaceBtwItems),
              EProfileMenu(
                  title: 'User ID',
                  value: '232424',
                  icon: Iconsax.copy,
                  onPressed: () {}),
              EProfileMenu(
                  title: 'Email',
                  value: 'kimmis254@gmail.com',
                  onPressed: () {}),
              EProfileMenu(
                  title: 'Phone Number', value: '0745738345', onPressed: () {}),
              EProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              EProfileMenu(
                  title: 'Date of Birth',
                  value: '10th January, 2004',
                  onPressed: () {}),
              const Divider(),
              const SizedBox(height: ESizes.spaceBtwItems),
              Center(
                child: OutlinedButton(
                    onPressed: (){}, 
                    child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
