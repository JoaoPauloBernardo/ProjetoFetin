// main.dart
import 'package:fetin_app/splash_screen/splash_page.dart';
import 'package:fetin_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fetin_app/login.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPage(),
    theme: AppTheme.light,
    darkTheme: AppTheme.dark,
    themeMode: ThemeMode.system,
    debugShowCheckedModeBanner: false,
  ));
}

