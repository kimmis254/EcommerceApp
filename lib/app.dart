import 'package:ecommerceapp/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/utils/theme/theme.dart';
import 'package:get/get.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme:  EcommAppTheme.lightTheme,
      darkTheme: EcommAppTheme.darkTheme,
      home: const OnboardingScreen(),

    );
  }
}