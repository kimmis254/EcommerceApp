import 'package:flutter/material.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/text_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/text_field_theme.dart';

class EcommAppTheme{
  EcommAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ETextTheme.ligthTextTheme,
    chipTheme: EChipTheme.lightChipTheme,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    checkboxTheme: ECheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: EElevatedButtonTheme.LightElevatedButtonTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ETextFormFieldTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
      textTheme: ETextTheme.darkTextTheme,
      chipTheme: EChipTheme.darkChipTheme,
      appBarTheme: EAppBarTheme.darkAppBarTheme,
      checkboxTheme: ECheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: EElevatedButtonTheme.DarkElevatedButtonTheme,
      outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: ETextFormFieldTheme.darkInputDecorationTheme

  );
}