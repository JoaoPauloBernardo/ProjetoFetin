import 'package:fetin_app_agora_vai/pages/de_uso/navigation_bar/navigation_menu_home.dart';
import 'package:fetin_app_agora_vai/pages/login/esqueci_senha.dart';
import 'package:fetin_app_agora_vai/pages/login/login_cadastro.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Scalet Mate \nWelcome Back", 
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email da empresa"
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Senha"
                      ),
                    ),
                  ),
                  Column(
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => EsqueciSenha()),
                      );
                    },
                    child: Text("Esqueci minha senha", style: Theme.of(context).textTheme.bodyLarge,),
                  ),
                  SizedBox(height: 20,),
                ],
                  )
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => NavigationMenu())
                        );
                    },
                    child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 30,),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => LoginCadastro()),
                      );
                    },
                    child: Text("Criar Conta", style: Theme.of(context).textTheme.bodyLarge,)
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}