import 'package:ecommerceapp/bindings/general_bindings.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/utils/theme/theme.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    // Set the system navigation bar color to match the theme
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: isDarkMode ? Colors.black : Colors.white,
      systemNavigationBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
    ));

    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: EcommAppTheme.lightTheme,
      darkTheme: EcommAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(
        backgroundColor: EColors.primary,
        body: Center(child: CircularProgressIndicator(color: Colors.white))
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
