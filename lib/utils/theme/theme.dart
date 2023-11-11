import 'package:flutter/material.dart';
import 'package:baladi/utils/theme/custom_themes/appbar_theme.dart';
import 'package:baladi/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:baladi/utils/theme/custom_themes/custom_text_theme.dart';
import 'package:baladi/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:baladi/utils/theme/custom_themes/text_field_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: BottomSheetTheme.lightBottomSheetTheme,
    textTheme: CustomTextTheme.lightTextTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: BottomSheetTheme.darkBottomSheetTheme,
    textTheme: CustomTextTheme.darkTextTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
  );
}
