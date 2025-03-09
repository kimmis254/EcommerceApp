import 'package:ecommerceapp/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerceapp/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/signup_form.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(ETexts.signUpTitle, style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium),

              const SizedBox(height: ESizes.spaceBtwSections),

              SignUpForm(),

              const SizedBox(height: ESizes.spaceBtwSections),

              EFormDivider(dividerText: ETexts.orSignUpWith.capitalize!),
              const SizedBox(height: ESizes.spaceBtwSections),

              const ESocialButtons()

            ],
          ),
        ),)
      ,
    );
  }
}


