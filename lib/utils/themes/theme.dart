import 'package:flutter/material.dart';
import 'package:patakazi/utils/themes/custom_themes/appbar_theme.dart';
import 'package:patakazi/utils/themes/custom_themes/bottom_sheet_theme.dart';
import 'package:patakazi/utils/themes/custom_themes/checkbox_theme.dart';
import 'package:patakazi/utils/themes/custom_themes/chip_theme.dart';
import 'package:patakazi/utils/themes/custom_themes/elevated_button_theme.dart';
import 'package:patakazi/utils/themes/custom_themes/outlined_button.dart';
import 'package:patakazi/utils/themes/custom_themes/text_field_theme.dart';
import 'package:patakazi/utils/themes/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Color.fromARGB(255, 77, 153, 79),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TButtonSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Color.fromARGB(255, 69, 131, 72),
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TButtonSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
