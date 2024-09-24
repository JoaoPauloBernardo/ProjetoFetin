import 'dart:convert';

import 'package:fetin_app_agora_vai/json/convert_escala.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class EscalasTesteFetin1 extends StatefulWidget {
  const EscalasTesteFetin1({super.key});

  @override
  State<EscalasTesteFetin1> createState() => _EscalasTesteFetin1State();
}


class _EscalasTesteFetin1State extends State<EscalasTesteFetin1> {

  bool _loading = true;

  Future<List<TodoModelJson>> ReadJsonData() async{
    final jsondata = await rootBundle.loadString('lib/assets/todo_models.json');
    final lista = jsonDecode(jsondata) as List<dynamic>;

    return lista.map((e) => TodoModelJson.fromJson(e)).toList();
  }
  List<TodoModelJson> _listaJson = [];


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

  List<Widget> _buildList(List<TodoModelJson> items) {
    List<Widget> lista = [];
    String diaAnterior = '00/00/0000';

    for (int i = 0; i < items.length; i++) {
      if (items[i].data.toString() != diaAnterior) {
        lista.add(
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                    top: 20,
                    child: Container(
                      height: 3,
                      width: MediaQuery.of(context).size.width - 22,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  Center( //* texto onde esta o dia
                    heightFactor: 2.15,
                    child: Container(
                      width: 80,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Text(
                        items[i].data.toString(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelLarge
                      )
                    )
                  ),
                ],
              ),
              SizedBox(  //* origem destino
                height: 95+1,
                width: MediaQuery.of(context).size.width - 22,
                child: Stack(
                  children: [
                    Positioned( //* para o numero do voo ficar fora do scroll
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Text(
                        '   Nº voo: ${items[i].voo!.numeroDoVoo.toString()}',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                  ],
                ),
              ),
            ],
          ),
        );
        diaAnterior = items[i].data.toString();
      } else {
        lista.add(
          Row(
            children: [
              SizedBox(  //* origem destino
                height: 106+1,
                width: MediaQuery.of(context).size.width - 22,
                child: Stack(
                  children: [
                    Positioned( 
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(  //* divisoria preta
                        width: MediaQuery.of(context).size.width - 22,
                        height: 1,
                        color: const Color.fromARGB(255, 149, 149, 149)
                      ),
                    ),
                    Positioned( 
                      top: 10,
                      left: 0,
                      right: 0,
                      child: Text(
                        '   Nº voo: ${items[i].voo!.numeroDoVoo.toString()}',
                        style: Theme.of(context).textTheme.bodyLarge
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),  //* margem para distanciar a origem/destido do n do voo
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                  ],
                ),
              ),
            ],
          ),
        ); // or some other widget
      }
    }
    return lista;
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
          child: Column(children: [
            const SizedBox(
              //* distancia entre o topo e o titulo e settings
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
                        onPressed: () {
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
            Container(
              //* divisoria preta
              width: MediaQuery.of(context).size.width - 22,
              height: 1,
              color: Theme.of(context).primaryColor
            ),
            SizedBox(
              height: appHeight - 92,
              width: MediaQuery.of(context).size.width - 22,
              child: ListView(
                children: _buildList(_listaJson),
                ),
              ),
            ]
          )
      )
    );
  }
}
