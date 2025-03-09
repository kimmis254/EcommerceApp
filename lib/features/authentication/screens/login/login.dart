import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:ecommerceapp/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerceapp/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerceapp/features/authentication/screens/login/login_form.dart';
import 'package:ecommerceapp/features/authentication/screens/login/login_header.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [

              LoginHeader(),
              LoginForm(),
              EFormDivider(dividerText: ETexts.orSignInWith.capitalize!),
              const SizedBox(width: ESizes.spaceBtwSections),
              ESocialButtons()


            ],
          ),
        ),
      ),
    );
  }
}








