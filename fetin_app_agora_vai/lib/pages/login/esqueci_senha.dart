import 'package:fetin_app_agora_vai/pages/login/senha_codigo.dart';
import 'package:flutter/material.dart';

class EsqueciSenha extends StatefulWidget {
  const EsqueciSenha({super.key});

  @override
  State<EsqueciSenha> createState() => _EsqueciSenhaState();
}

class _EsqueciSenhaState extends State<EsqueciSenha> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(left: 20, right: 20, top: 150, bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Scalet Mate", style: Theme.of(context).textTheme.headlineLarge,),
              SizedBox(height: 100,),
              Text("Digite seu email para enviarmos um código de verificação.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 15,),
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
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 50,),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => SenhaCodigo()),
                      );
                    },
                    child: Text("Enviar para este e-mail", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
    

}