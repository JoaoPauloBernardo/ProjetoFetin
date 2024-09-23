import 'dart:convert';

import 'package:fetin_app_agora_vai/json/convert_perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PerfilTesteFetin1 extends StatefulWidget {
  const PerfilTesteFetin1({super.key});

  @override
  State<PerfilTesteFetin1> createState() => _PerfilTesteFetin1State();
}

//TODO: colocar todas as informacoes em containers para poder botar o ListView para direita

class _PerfilTesteFetin1State extends State<PerfilTesteFetin1> {
  bool _loading = true;

  Future<List<UserJson>> ReadJsonData() async{
    final jsondata = await rootBundle.loadString('perfil.json');
    final lista = jsonDecode(jsondata) as List<dynamic>;

    return lista.map((e) => UserJson.fromJson(e)).toList();
  }

  List<UserJson> _listaJson = [];

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
    _listaJson = await ReadJsonData();
    setState(() {});
  }

  Widget _buildPerfil(List<UserJson> perfil){
    Widget corpoPerfil;
    corpoPerfil = Container(
              width: MediaQuery.of(context).size.width - 22,
              height: MediaQuery.of(context).size.height - 118,
              child: ListView(
                children: [
                  SizedBox( //* distancia entre o titulo e o perfil
                    height: 15,
                  ),
                  Icon(
                    size: 120,
                    Icons.account_circle_rounded  //TODO: trocar para uma foto
                  ),
                  Center(
                    child: Text(
                      perfil[0].username.toString(),
                      style: Theme.of(context).textTheme.titleLarge
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(  //* divisoria preta
                    width: MediaQuery.of(context).size.width - 22,
                    height: 1,
                    color: Theme.of(context).primaryColor
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 22,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: ShapeDecoration(
                                color: Color(0xFF747DAA),
                                shape: OvalBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 26,
                            )
                          ]
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 21,
                              width: MediaQuery.of(context).size.width - 70,
                              child: Positioned(
                                child: Text(
                                  'Identificação:',
                                  style: Theme.of(context).textTheme.labelSmall
                                )
                              )
                            ),
                            Container(
                              height: 23,
                              width: MediaQuery.of(context).size.width - 70,
                              child: Positioned(
                                child: Text(
                                  perfil[0].id.toString(),
                                  style: Theme.of(context).textTheme.titleMedium
                                )
                              )
                            ),
                          ],
                        )
                      ],
                    )
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 22,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: ShapeDecoration(
                                color: Color(0xFF747DAA),
                                shape: OvalBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 26,
                            )
                          ]
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 21,
                              width: MediaQuery.of(context).size.width - 70,
                              child: Positioned(
                                child: Text(
                                  'Nacionalidade:',
                                  style: Theme.of(context).textTheme.labelSmall
                                )
                              )
                            ),
                            Container(
                              height: 23,
                              width: MediaQuery.of(context).size.width - 70,
                              child: Positioned(
                                child: Text(
                                  perfil[0].nacionalidade.toString(),
                                  style: Theme.of(context).textTheme.titleMedium
                                )
                              )
                            ),
                          ],
                        )
                      ],
                    )
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 22,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: ShapeDecoration(
                                color: Color(0xFF747DAA),
                                shape: OvalBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 26,
                            )
                          ]
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 21,
                              width: MediaQuery.of(context).size.width - 70,
                              child: Positioned(
                                child: Text(
                                  'Cargo:',
                                  style: Theme.of(context).textTheme.labelSmall
                                )
                              )
                            ),
                            Container(
                              height: 23,
                              width: MediaQuery.of(context).size.width - 70,
                              child: Positioned(
                                child: Text(
                                  perfil[0].cargo.toString(),
                                  style: Theme.of(context).textTheme.titleMedium
                                )
                              )
                            ),
                          ],
                        )
                      ],
                    )
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 22,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: ShapeDecoration(
                                color: Color(0xFF747DAA),
                                shape: OvalBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 26,
                            )
                          ]
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 21,
                              width: MediaQuery.of(context).size.width - 70,
                              child: Positioned(
                                child: Text(
                                  'Empresa:',
                                  style: Theme.of(context).textTheme.labelSmall
                                )
                              )
                            ),
                            Container(
                              height: 23,
                              width: MediaQuery.of(context).size.width - 70,
                              child: Positioned(
                                child: Text(
                                  perfil[0].empresa.toString(),
                                  style: Theme.of(context).textTheme.titleMedium
                                )
                              )
                            ),
                          ],
                        )
                      ],
                    )
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 22,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: ShapeDecoration(
                                color: Color(0xFF747DAA),
                                shape: OvalBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 26,
                            )
                          ]
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 21,
                              width: MediaQuery.of(context).size.width - 70,
                              child: Positioned(
                                child: Text(
                                  'Aeroporto base:',
                                  style: Theme.of(context).textTheme.labelSmall
                                )
                              )
                            ),
                            Container(
                              height: 23,
                              width: MediaQuery.of(context).size.width - 70,
                              child: Positioned(
                                child: Text(
                                  perfil[0].base.toString(),
                                  style: Theme.of(context).textTheme.titleMedium
                                )
                              )
                            ),
                          ],
                        )
                      ],
                    )
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(  //* divisoria preta
                    width: MediaQuery.of(context).size.width - 22,
                    height: 1,
                    color: Theme.of(context).primaryColor
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            );
    return corpoPerfil;
  }

  @override
  Widget build(BuildContext context) {
    return _loading 
    ? Center(
        child: CircularProgressIndicator(), // efeito de carregamento
      )
      :Scaffold(
      body: Center(
        child: Column(
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
                    child: IconButton(
                      onPressed: (){
                        //TODO: Abrir settings
                      }, 
                      //TODO: diminuir o raio de feedback
                      icon: Icon(Icons.settings)),
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
              color: Theme.of(context).primaryColor
            ),
            _buildPerfil(_listaJson)
          ],
        )
      )
    );
  }
}