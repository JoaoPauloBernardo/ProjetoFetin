import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  var counter = 0;

  final names = ['bia', 'fefe', 'vini', 'china'];

  final controller = TextEditingController();

  final lista = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page 2'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'lib/assets/wallpaper_app_teste2.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.45),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              // Container(
              //   color: Colors.red,
              //   height: 120,
              //   width: 30,
              // ),
              // Container(
              //   color: Colors.green,
              //   height: 50,
              //   width: 50,
              // ),
              // Container(
              //   color: Colors.blue,
              //   height: 30,
              //   width: 120,
              // ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FlutterLogo(
                      size: 150,
                      style: FlutterLogoStyle.horizontal,
                      textColor: Colors.white,
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Login')
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
