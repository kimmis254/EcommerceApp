import 'package:ecommerceapp/features/authentication/controllers/signup/signup_controller.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/terms_and_conditions_checkbox.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:ecommerceapp/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final dark = EHelperFunctions.isDarkMode(context);
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) => EValidator.validateEmptyText('First name', value),
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
                  controller: controller.lastName,
                  validator: (value) => EValidator.validateEmptyText('Last name', value),
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
            validator: (value) => EValidator.validateEmptyText('Username', value),
            controller: controller.userName,
            decoration:  InputDecoration(
              labelText: ETexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
                floatingLabelStyle: TextStyle(color: dark ? EColors.white : EColors.black)
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            validator: (value) => EValidator.validateEmail(value),
            controller: controller.email,
            decoration:  InputDecoration(
              labelText: ETexts.email,
              prefixIcon: Icon(Iconsax.direct),
                floatingLabelStyle: TextStyle(color: dark ? EColors.white : EColors.black)
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => EValidator.validatePhoneNumber(value),
            decoration: InputDecoration(
              labelText: ETexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
                floatingLabelStyle: TextStyle(color: dark ? EColors.white : EColors.black)
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          /// Password
          Obx(
            () =>  TextFormField(
              controller: controller.password,
              validator: (value) => EValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: ETexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye)),
                  floatingLabelStyle: TextStyle(color: dark ? EColors.white : EColors.black)
              ),
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
              onPressed: () => controller.signup(),
              style: ElevatedButton.styleFrom(
                  backgroundColor: EColors.primary,
                  foregroundColor: EHelperFunctions.isDarkMode(context) ? EColors.white : EColors.black,
                  side: BorderSide(color: Colors.transparent)
              ),
              child: const Text(ETexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
