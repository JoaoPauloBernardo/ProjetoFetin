import 'package:fetin_app_agora_vai/pages/splash_screen/splash_page.dart';
import 'package:fetin_app_agora_vai/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() async {

  runApp(SafeArea(  //! ISSO ESTA FAZENDO COM QUE OCORRA UM OVERFLOW
    child: MaterialApp(
      home: const SplashPage(),
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    ),
  ));
}

// *username