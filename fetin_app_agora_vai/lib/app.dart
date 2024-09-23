import 'package:fetin_app_agora_vai/pages/de_uso/navigation_bar/navigation_menu_home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: NavigationMenu()
        // initialRoute: NamedRoutes.splash,
        // routes: {
        //   NamedRoutes.initial: (context) => const SplashPage(),
        //   NamedRoutes.splash: (context) => const SplashPage(),
        //   NamedRoutes.loginOrSignUp: (context) => const LoginOrSignUp(),
        //   NamedRoutes.homePage: (context) => const NavigationMenu(),
        // },
    );
  }
}