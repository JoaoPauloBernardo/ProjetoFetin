import 'dart:async';

import 'package:fetin_app_agora_vai/pages/login/login.dart';
import 'package:flutter/material.dart';

// TODO: Adicionar algo visual que indique o carregamento

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    init();
  }

  Timer init(){
    return Timer(
      const Duration(seconds: 2), 
      navegateToLoginSignUp
    );
  }

  void navegateToLoginSignUp(){ //* navegando da splash page para a pagina de login/criar conta
    Navigator.pushReplacement(  // o replacement faz com que a tela saia da pinha, para nao dar para retornar pelo botao de voltar do celular
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(  //* container eh a tela completa
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 91),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: const Color.fromARGB(255, 5, 66, 116)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox( //* caixa do texto central
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Text(  //* texto central
                  'Scalet Mate',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFFEBF2FF),
                      fontSize: 40,
                      fontFamily: 'Arimo',
                      fontWeight: FontWeight.w700,
                      height: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
