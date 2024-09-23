import 'package:flutter/material.dart';
import 'app_color.dart';

ThemeData lightTheme = ThemeData(
  primaryColorDark: Colors.blue,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: AppColor.bodyColor,
  ),
  scaffoldBackgroundColor: AppColor.bodyColor,
  hintColor: AppColor.textColor,
  primaryColorLight: AppColor.buttomBackgroundColor,

  //* cores do sistema:
  primaryColor: Colors.black,

  textTheme: TextTheme(
    headlineLarge: TextStyle(
      color: Colors.black,
      fontSize: 40,
      fontWeight: FontWeight.bold
    ),
    headlineMedium: TextStyle(
      color: Color(0xFF444B6E),
      fontSize: 18,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
    titleLarge: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    titleSmall: TextStyle(
      color: Color(0xFF444B6E),
      fontSize: 16,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    bodyMedium: TextStyle(
      color: Color(0xFF444B6E),
      fontSize: 12,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    bodySmall: TextStyle(
      color: Color(0xFF444B6E),
      fontSize: 16,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
    labelLarge: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    labelMedium: TextStyle(
      color: Color(0xFF190482),
      fontSize: 16,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    labelSmall: TextStyle(
      color: Color(0xFF444B6E),
      fontSize: 18,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  ),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: Colors.black
  ),
  cardColor: Colors.black
  
);