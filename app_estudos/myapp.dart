import 'package:flutter/material.dart';
//import 'package:flutter_teste_1/home_page1.dart';
//import 'package:flutter_teste_1/home_page2.dart';
import 'package:flutter_teste_1/home_controller.dart';
// import 'package:flutter_teste_1/home_page_teste_fetin_1.dart';
import 'package:flutter_teste_1/navegation_bar.dart';

class MeuApp extends StatelessWidget{
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: HomeController(
        child: const  NavegationMenu(),
      ),
    );

  }
}