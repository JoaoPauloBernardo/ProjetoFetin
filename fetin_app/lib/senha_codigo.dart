import 'package:fetin_app/login.dart';
import 'package:flutter/material.dart';

class SenhaCodigo extends StatefulWidget {
  const SenhaCodigo({super.key});

  @override
  State<SenhaCodigo> createState() => _SenhaCodigoState();
}

class _SenhaCodigoState extends State<SenhaCodigo> {
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
              Text("Insira o código.",
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
                        hintText: "código de verificação"
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                 children: [
                  SizedBox(height: 80,),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => LoginPage()),
                      );
                    },
                    child: Text("Trocar senha", style: TextStyle(fontWeight: FontWeight.bold),),
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