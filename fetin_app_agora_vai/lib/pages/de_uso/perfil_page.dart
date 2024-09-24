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
    final jsondata = await rootBundle.loadString('lib/assets/perfil.json');
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
    double appHeight = MediaQuery.of(context).size.height 
    - AppBar().preferredSize.height 
    - MediaQuery.of(context).padding.top 
    - MediaQuery.of(context).padding.bottom;

    Widget corpoPerfil;
    corpoPerfil = SizedBox(
              width: MediaQuery.of(context).size.width - 22,
              height: appHeight - 118,
              child: ListView(
                children: [
                  const SizedBox( //* distancia entre o titulo e o perfil
                    height: 15,
                  ),
                  const Icon(
                    size: 120,
                    Icons.account_circle_rounded  //TODO: trocar para uma foto
                  ),
                  Center(
                    child: Text(
                      perfil[0].username.toString(),
                      style: Theme.of(context).textTheme.titleLarge
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(  //* divisoria preta
                    width: MediaQuery.of(context).size.width - 22,
                    height: 1,
                    color: Theme.of(context).primaryColor
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 22,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF747DAA),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(
                            height: 26,
                          )
                        ]
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 21,
                            width: MediaQuery.of(context).size.width - 70,
                            child: Positioned(
                              child: Text(
                                'Identificação:',
                                style: Theme.of(context).textTheme.labelSmall
                              )
                            )
                          ),
                          SizedBox(
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
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 22,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF747DAA),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(
                            height: 26,
                          )
                        ]
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 21,
                            width: MediaQuery.of(context).size.width - 70,
                            child: Positioned(
                              child: Text(
                                'Nacionalidade:',
                                style: Theme.of(context).textTheme.labelSmall
                              )
                            )
                          ),
                          SizedBox(
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
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 22,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF747DAA),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(
                            height: 26,
                          )
                        ]
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 21,
                            width: MediaQuery.of(context).size.width - 70,
                            child: Positioned(
                              child: Text(
                                'Cargo:',
                                style: Theme.of(context).textTheme.labelSmall
                              )
                            )
                          ),
                          SizedBox(
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
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 22,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF747DAA),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(
                            height: 26,
                          )
                        ]
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 21,
                            width: MediaQuery.of(context).size.width - 70,
                            child: Positioned(
                              child: Text(
                                'Empresa:',
                                style: Theme.of(context).textTheme.labelSmall
                              )
                            )
                          ),
                          SizedBox(
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
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 22,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF747DAA),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(
                            height: 26,
                          )
                        ]
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 21,
                            width: MediaQuery.of(context).size.width - 70,
                            child: Positioned(
                              child: Text(
                                'Aeroporto base:',
                                style: Theme.of(context).textTheme.labelSmall
                              )
                            )
                          ),
                          SizedBox(
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
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(  //* divisoria preta
                    width: MediaQuery.of(context).size.width - 22,
                    height: 1,
                    color: Theme.of(context).primaryColor
                  ),
                  const SizedBox(
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
    ? const Center(
        child: CircularProgressIndicator(), // efeito de carregamento
      )
      :Scaffold(
      body: Center(
        child: Column(
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
                    child: IconButton(
                      onPressed: (){
                        //TODO: Abrir settings
                      }, 
                      //TODO: diminuir o raio de feedback
                      icon: const Icon(Icons.settings)),
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