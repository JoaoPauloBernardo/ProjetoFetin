// import 'package:flutter/material.dart';
// import 'package:flutter_teste_1/home_controller.dart';

// class HomePage1 extends StatelessWidget{
//   const HomePage1({super.key});

//   @override
//   Widget build(BuildContext context) {

//     var controller = HomeController.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home page"),
//         backgroundColor: const Color.fromARGB(96, 251, 0, 255),
//       ),
//       body: Center(
//         child: Text('''meu primeiro app
//         Quantidade de cliques: ${controller.value}'''),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: (){
//           controller.increment();
//         }
//       ),
//     );

//   }
// }

import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  var counter = 0;

  final names = ['bia', 'fefe', 'vini', 'china'];

  final controller = TextEditingController();

  final lista = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
        backgroundColor: const Color.fromARGB(96, 251, 0, 255),
      ),

      // body: Center(
      //   child:ListView.builder(
      //     itemCount: names.length,
      //     itemBuilder: (context, index) {
      //       return ListTile(

      //         title: Text(names[index]),
      //       );
      //     }
      //   ),
      // ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: controller,
                )),
                IconButton(
                  onPressed: () {
                    final text = controller.text;
                    setState(() {
                      if (controller.text.isNotEmpty) {
                        lista.add(text);
                      }
                    });
                    FocusScope.of(context).requestFocus(
                        FocusNode()); // Comando para fechar instantaneamente o teclado
                    if (controller.text.isNotEmpty) {
                      controller.clear();
                    }
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: lista.length,
                  itemBuilder: (context, index) {
                    final item = lista[index];

                    return ListTile(
                      title: Text(item),
                    );
                  }))
        ],
      ),

      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          }),
    );
  }
}
