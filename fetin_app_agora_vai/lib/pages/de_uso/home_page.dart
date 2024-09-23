import 'dart:convert';

import 'package:fetin_app_agora_vai/json/convert_escala.dart';
import 'package:fetin_app_agora_vai/json/convert_perfil.dart';
import 'package:fetin_app_agora_vai/pages/de_uso/navigation_bar/perfil_navigation_menu.dart';
import 'package:fetin_app_agora_vai/pages/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:core';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //String _data = DateFormat('yyyy-MM-dd – kk:mm').format(now);
  String dataHoje = '${DateTime.now().day.toString().padLeft(2, '0')}/${DateTime.now().month.toString().padLeft(2, '0')}/${DateTime.now().year.toString().substring(2)}';
  bool _loading = true;

  List<TodoModelJson> _listaJsonEscala = [];
  List<UserJson> _listaJsonPerfil = [];

  Future<List<TodoModelJson>> ReadJsonDataEscala() async{
    final jsondataEscala = await rootBundle.loadString('assets/todo_models.json');
    final lista = jsonDecode(jsondataEscala) as List<dynamic>;
    return lista.map((e) => TodoModelJson.fromJson(e)).toList();
  }

  Future<List<UserJson>> ReadJsonDataPerfil() async{
    final jsondataPerfil = await rootBundle.loadString('perfil.json');
    final lista = jsonDecode(jsondataPerfil) as List<dynamic>;
    return lista.map((e) => UserJson.fromJson(e)).toList();
  }

  @override
  void initState() {
    super.initState();
    _readJsonData().then((data){
      setState(() {
        _loading = false;
      });
    });
  }

  Future<void> _readJsonData() async {
    _listaJsonEscala = await ReadJsonDataEscala();
    _listaJsonPerfil = await ReadJsonDataPerfil();
    setState(() {});
  }

  List<Widget> _buildList(List<TodoModelJson> items) {
    List<Widget> lista = [];
    for (int i = 0; i < items.length; i++) {
      if(dataHoje == items[i].data.toString())
        lista.add(
          Container(
            child: Column(
              children: [
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width - 22,
                  color: const Color.fromARGB(255, 149, 149, 149)
                ),
                Container(  //* origem destino
                  height: 95+1,
                  width: MediaQuery.of(context).size.width - 22,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '   Nº voo: ${items[i].voo!.numeroDoVoo.toString()}',
                            style: Theme.of(context).textTheme.bodyLarge
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 13,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    items[i].voo!.aeroportoDeOrigem.toString(),
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.headlineSmall
                                  ),
                                  Text(
                                    items[i].voo!.horarioDeSaida.toString(), //* hora de chegada
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.titleSmall
                                  )
                                ],
                              ),
                              Container(
                                height: 5,
                                width: 40,
                                color: Colors.black
                              ),
                              Container(
                                height: 80,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        items[i].voo!.aeroportoDeDestino.toString(),
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.headlineSmall
                                      ),
                                      Text(
                                        items[i].voo!.horarioDeChegada.toString(),
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.titleSmall
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    return lista;
  }

  Widget _buildPerfil(List<UserJson> perfil){
    Widget corpoPerfil;
    corpoPerfil = Row(
      children: [
        SizedBox(width: 20,),
        Container(  //* perfil em si
          padding: EdgeInsets.zero,
          width:  MediaQuery.of(context).size.width - 22,
          height: 125,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.push(//* botão de 'perfil' que leva para o perfil completo
                        context,
                        MaterialPageRoute(builder: (context) => NavigationMenuPerfil()),
                      );
                    },
                    //TODO: diminuir o raio de feedback
                    padding: EdgeInsets.zero,
                    iconSize: 110,
                    icon: Icon(Icons.account_circle_rounded) //TODO: transformar em uma imagem
                  ),
                  SizedBox( //* distancia entre o icone e as infos
                    width: 28,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 174,
                        height: 125,
                        child: Positioned(
                          top: 0,
                          left: 0,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(  //* username
                                  perfil[0].username.toString(),
                                  style: Theme.of(context).textTheme.bodySmall
                                ),
                              ),
                              Positioned( //* ID
                                left: 0,
                                top: 31,
                                child: Text(
                                  perfil[0].id.toString(),
                                  style: Theme.of(context).textTheme.bodySmall
                                ),
                              ),
                              Positioned( //* Nacionalidade
                                left: 0,
                                top: 52,
                                child: Text(
                                  perfil[0].nacionalidade.toString(),
                                  style: Theme.of(context).textTheme.bodySmall
                                ),
                              ),
                              Positioned( //* Cargo
                                left: 0,
                                top: 73,
                                child: Text(
                                  perfil[0].cargo.toString(),
                                  style: Theme.of(context).textTheme.bodySmall
                                ),
                              ),
                              Positioned( //*base
                                left: 0,
                                top: 92,
                                child: Text(
                                  perfil[0].base.toString(),
                                  style: Theme.of(context).textTheme.bodySmall
                                ),
                              ),
                            ],
                          ),
                        )
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 53,
                          height: 45,
                          child: Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              Positioned(
                                top: 11,
                                child: Text(
                                  '• ${perfil[0].horasTotais.toString()} h',
                                  textAlign: TextAlign.right,
                                  style: Theme.of(context).textTheme.labelMedium
                                ),
                              ),
                              //! AQUI TEM UM BOTÃO INVISIVEL PARA ALINHAR
                              //! AQUI TEM UM BOTÃO INVISIVEL PARA ALINHAR
                              //! AQUI TEM UM BOTÃO INVISIVEL PARA ALINHAR
                              //! AQUI TEM UM BOTÃO INVISIVEL PARA ALINHAR
                              IconButton( //* botão de mais que leva para o perfil completo
                                  onPressed: (){
                                    //! NÃO REMOVA ESSE COMENTARIO
                                    // Navigator.push(//* botão de 'perfil' que leva para o perfil completo
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => NavigationMenuPerfil()),
                                    // );
                                  },
                                  color: const Color.fromARGB(0, 255, 255, 255),
                                  padding: EdgeInsets.zero,
                                  icon: Icon(Icons.add)
                              ),
                            ]
                          ),
                        ),
                      )
                    ]
                  ),
                ]
              ),
            ],
          )
        ),
      ],
    );
    return corpoPerfil;
  }

  @override
  Widget build(BuildContext context) {
    
    return _loading
    ? Center(
        child: CircularProgressIndicator(), // efeito de carregamento
      )
      : Scaffold(
        body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start ,
            children: [
              SizedBox( //* distancia entre o topo e o titulo e settings
                height: 17,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 38.50,
                child: Stack(
                  children: [
                    Positioned(
                      right: 16,
                      top: -8,
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => LoginPage())
                          );
                          //TODO: Abrir settings
                        }, 
                        //TODO: diminuir o raio de feedback
                        child: Text("log out")
                        //icon: Icon(Icons.settings)
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 0,
                      child: Text(
                        'Scalet Mate',
                        style: Theme.of(context).textTheme.titleLarge
                      ),
                    ),
                  ],
                ),
              ),
              Container(  //* divisoria preta
                width: MediaQuery.of(context).size.width - 22,
                height: 1,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox( //* distancia entre o titulo e o perfil
                height: 15,
              ),
              _buildPerfil(_listaJsonPerfil), //* Monta o Perfil
              Container(  //* divisoria preta
                width: MediaQuery.of(context).size.width - 22,
                height: 1,
                color: Theme.of(context).primaryColor
              ),
              Container(
                width: MediaQuery.of(context).size.width - 22,
                height: MediaQuery.of(context).size.height - 259,
                child: ListView(
                    children: _buildList(_listaJsonEscala),
                  )
                ),
            ],
          ),
        ),
      )
    );
  }
}


