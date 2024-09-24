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
    final jsondataEscala = await rootBundle.loadString('lib/assets/todo_models.json');
    final lista = jsonDecode(jsondataEscala) as List<dynamic>;
    return lista.map((e) => TodoModelJson.fromJson(e)).toList();
  }

  Future<List<UserJson>> ReadJsonDataPerfil() async{
    final jsondataPerfil = await rootBundle.loadString('lib/assets/perfil.json');
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
      if(dataHoje == items[i].data.toString()) {
        lista.add(
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                SizedBox(  //* origem destino
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
                              const SizedBox(
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
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20,  left: 5, right: 5), 
                                child: Icon(
                                  Icons.arrow_right_alt_outlined,
                                  size: 55,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              SizedBox(
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
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width - 22,
                  color: const Color.fromARGB(255, 149, 149, 149)
                ),
              ],
            ),
          ),
        );
      }
      }
    return lista;
  }

  Widget _buildPerfil(List<UserJson> perfil){
    Widget corpoPerfil;
    corpoPerfil = Row(
      children: [
        const SizedBox(width: 20,),
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
                        MaterialPageRoute(builder: (context) => const NavigationMenuPerfil()),
                      );
                    },
                    //TODO: diminuir o raio de feedback
                    padding: EdgeInsets.zero,
                    iconSize: 110,
                    icon: const Icon(Icons.account_circle_rounded) //TODO: transformar em uma imagem
                  ),
                  const SizedBox( //* distancia entre o icone e as infos
                    width: 28,
                  ),
                  Stack(
                    children: [
                      SizedBox(
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
                        child: SizedBox(
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
                              // //! AQUI TEM UM BOTÃO INVISIVEL PARA ALINHAR
                              // //! AQUI TEM UM BOTÃO INVISIVEL PARA ALINHAR
                              // //! AQUI TEM UM BOTÃO INVISIVEL PARA ALINHAR
                              // //! AQUI TEM UM BOTÃO INVISIVEL PARA ALINHAR
                              // IconButton( //* botão de mais que leva para o perfil completo
                              //     onPressed: (){
                              //       //! NÃO REMOVA ESSE COMENTARIO
                              //       // Navigator.push(//* botão de 'perfil' que leva para o perfil completo
                              //       //   context,
                              //       //   MaterialPageRoute(builder: (context) => NavigationMenuPerfil()),
                              //       // );
                              //     },
                              //     color: const Color.fromARGB(0, 255, 255, 255),
                              //     padding: EdgeInsets.zero,
                              //     icon: const Icon(Icons.add)
                              // ),
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
    double appHeight = MediaQuery.of(context).size.height 
    - AppBar().preferredSize.height 
    - MediaQuery.of(context).padding.top 
    - MediaQuery.of(context).padding.bottom;

    return _loading
    ? const Center(
        child: CircularProgressIndicator(), // efeito de carregamento
      )
      : Scaffold(
        body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start ,
          children: [
            const SizedBox( //* distancia entre o topo e o titulo e settings
              height: 17,
            ),
            SizedBox(
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
                      child: const Text("log out")
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
            const SizedBox( //* distancia entre o titulo e o perfil
              height: 15,
            ),
            _buildPerfil(_listaJsonPerfil), //* Monta o Perfil
            Container(  //* divisoria preta
              width: MediaQuery.of(context).size.width - 22,
              height: 1,
              color: Theme.of(context).primaryColor
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 22,
              height: appHeight - 259,
              child: ListView(
                  children: _buildList(_listaJsonEscala), //* monta a escala do dia
                )
              ),
          ],
        ),
      )
    );
  }
}


