import 'package:ecommerceapp/features/authentication/screens/signup/terms_and_conditions_checkbox.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';


class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          /// First & Last Name in One Row
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration:  InputDecoration(
                    labelText: ETexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                    floatingLabelStyle: TextStyle(color: dark ? EColors.white : EColors.black)
                  ),
                ),
              ),
              const SizedBox(width: ESizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration:  InputDecoration(
                    labelText: ETexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                      floatingLabelStyle: TextStyle(color: dark ? EColors.white : EColors.black)
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            decoration:  InputDecoration(
              labelText: ETexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
                floatingLabelStyle: TextStyle(color: dark ? EColors.white : EColors.black)
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            decoration:  InputDecoration(
              labelText: ETexts.email,
              prefixIcon: Icon(Iconsax.direct),
                floatingLabelStyle: TextStyle(color: dark ? EColors.white : EColors.black)
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            decoration: InputDecoration(
              labelText: ETexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
                floatingLabelStyle: TextStyle(color: dark ? EColors.white : EColors.black)
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: ETexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
                floatingLabelStyle: TextStyle(color: dark ? EColors.white : EColors.black)
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          /// Terms & Conditions
          ETermsAndConditions(),
          const SizedBox(height: ESizes.spaceBtwSections),

          /// Sign Up Button
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const  VerifyEmailScreen()),
              child: const Text(ETexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
