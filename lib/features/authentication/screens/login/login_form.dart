import 'package:ecommerceapp/bottom_navigation.dart';
import 'package:ecommerceapp/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/signup.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';




class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: ESizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefix: Icon(Iconsax.direct_right),
                labelText: ETexts.email,
                floatingLabelStyle: TextStyle(color: dark ? EColors.white : EColors.black)
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),
            TextFormField(
              decoration: InputDecoration(
                  prefix: Icon(Iconsax.password_check),
                  labelText: ETexts.password,
    floatingLabelStyle: TextStyle(color: dark ? EColors.white : EColors.black),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(ETexts.rememberMe),
                  ],
                ),
                TextButton(
                    onPressed: () => Get.to(() => const ForgotPasswordScreen()),
                    child: const Text(ETexts.forgotPassword))
              ],
            ),
            const SizedBox(height: ESizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const BottomNavigation()), child: Text(ETexts.signIn)
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignupScreen()),
                  child: Text(ETexts.createAccount)
              ),
            ),
          ],
        ),
      ),
    );
  }
}