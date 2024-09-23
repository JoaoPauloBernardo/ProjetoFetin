import 'package:flutter/material.dart';
import 'app_color.dart';

ThemeData darkTheme = ThemeData(
  
  brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
    background: AppColor.bodyColor,
  ),
  scaffoldBackgroundColor: AppColor.bodyColorDark,
  hintColor: AppColor.textColorDark,
  primaryColorLight: AppColor.buttomBackgroundColorDark,

  //* cores do sistema:
  primaryColor: Colors.white,
  
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: Colors.white,
      fontSize: 40,
      fontWeight: FontWeight.bold
    ),
    headlineMedium: TextStyle(
      color: Color.fromARGB(255, 190, 201, 255),
      fontSize: 18,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
    headlineSmall: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
    titleLarge: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    titleSmall: TextStyle(
      color: Color.fromARGB(255, 190, 201, 255),
      fontSize: 16,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    bodyMedium: TextStyle(
      color: Color.fromARGB(255, 190, 201, 255),
      fontSize: 12,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    bodySmall: TextStyle(
      color: Color.fromARGB(255, 190, 201, 255),
      fontSize: 16,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
    labelLarge: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    labelMedium: TextStyle(
      color: Color.fromARGB(255, 146, 124, 255),
      fontSize: 16,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    labelSmall: TextStyle(
      color: Color.fromARGB(255, 204, 213, 255),
      fontSize: 18,
      fontFamily: 'Arimo',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  ),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: Colors.white
  ),
  cardColor: Colors.white,
);