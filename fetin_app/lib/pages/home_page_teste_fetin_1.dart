import 'package:flutter/material.dart';

// se estiver dando errado Crtl+shift+i para abrir o devTools do chrome
class HomePageTesteFetin1 extends StatefulWidget {
  const HomePageTesteFetin1({super.key});

  @override
  State<HomePageTesteFetin1> createState() => _HomePageTesteFetin1State();
}

class _HomePageTesteFetin1State extends State<HomePageTesteFetin1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Positioned(
                  left: 11,
                  top: 17,
                  child: SizedBox(
                    width: 339,
                    height: 43.50,
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 300,
                          top: 6,
                          child: SizedBox(
                            width: 39,
                            height: 16,
                            child: Text(
                              'logout',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Arimo',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 5,
                          top: 0,
                          child: Text(
                            'Scalet Mate',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 42,
                          left: 0,
                          right: 0,
                          child: Row( //somente para centralizar
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 2,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],      
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 79,
                  child: SizedBox(
                    width: 312,
                    height: 125,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xFF190482),
                                  border: Border.all(
                                      color: const Color(0xFF190482),
                                      width: 2)),
                              child: const Icon(
                                Icons.person,
                                size: 90,
                                color: Colors.white,
                              )),
                        ),
                        const Positioned(
                          left: 138,
                          top: 3,
                          child: SizedBox(
                            width: 98,
                            height: 97,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 26,
                                  child: Text(
                                    'ID: xxxx.xxxx.xxxx',
                                    style: TextStyle(
                                      color: Color(0xFF444B6E),
                                      fontSize: 12,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 45,
                                  child: Text(
                                    'Nacionalidade',
                                    style: TextStyle(
                                      color: Color(0xFF444B6E),
                                      fontSize: 12,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'username',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 64,
                                  child: Text(
                                    'Cargo (ex.piloto)',
                                    style: TextStyle(
                                      color: Color(0xFF444B6E),
                                      fontSize: 12,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 83,
                                  child: Text(
                                    'Base',
                                    style: TextStyle(
                                      color: Color(0xFF444B6E),
                                      fontSize: 12,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 255,
                          top: 82,
                          child: SizedBox(
                            width: 55,
                            height: 18,
                            child: Stack(
                              children: [
                                const Positioned(
                                  left: 14,
                                  top: 0,
                                  child: Text(
                                    'xxx h',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF190482),
                                      fontSize: 16,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 9,
                                  child: Container(
                                    width: 3,
                                    height: 3,
                                    decoration: const ShapeDecoration(
                                      color: Color(0xFF190482),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 300,
                          top: 102,
                          child: Text(
                            '+',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Arimo',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 11,
                  top: 222,
                  child: SizedBox(
                    height: 92.50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 11,
                          top: 0,
                          child: SizedBox(
                            width: 315,
                            height: 85,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 241,
                                  top: 0,
                                  child: SizedBox(
                                    width: 72,
                                    height: 16,
                                    child: Stack(
                                      children: [
                                        const Positioned(
                                          left: 11,
                                          top: 0,
                                          child: Text(
                                            'Atrasado',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFFF21E02),
                                              fontSize: 14,
                                              fontFamily: 'Arimo',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 7,
                                          child: Container(
                                            width: 3,
                                            height: 3,
                                            decoration: const ShapeDecoration(
                                              color: Color(0xFFF21E02),
                                              shape: OvalBorder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 303,
                                  top: 62,
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Número do voo',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 3,
                                  top: 30,
                                  child: SizedBox(
                                    width: 217,
                                    height: 46,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 135,
                                          top: 0,
                                          child: SizedBox(
                                            width: 82,
                                            height: 46,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Text(
                                                    'Destino',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 24,
                                                      fontFamily: 'Arimo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 6,
                                                  top: 28,
                                                  child: Text(
                                                    'AM 10:00',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF444B6E),
                                                      fontSize: 16,
                                                      fontFamily: 'Arimo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: SizedBox(
                                            width: 79,
                                            height: 46,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Text(
                                                    'Origem',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 24,
                                                      fontFamily: 'Arimo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 10,
                                                  top: 28,
                                                  child: Text(
                                                    'AM 8:00',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF444B6E),
                                                      fontSize: 16,
                                                      fontFamily: 'Arimo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 254,
                                  top: 37,
                                  child: Text(
                                    'Seg. 10/06',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF444B6E),
                                      fontSize: 12,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 11,
                  top: 333,
                  child: SizedBox(
                    height: 92.50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 11,
                          top: 0,
                          child: SizedBox(
                            width: 315,
                            height: 85,
                            child: Stack(
                              children: [
                                const Positioned(
                                  left: 303,
                                  top: 62,
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Número do voo',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 3,
                                  top: 30,
                                  child: SizedBox(
                                    width: 217,
                                    height: 46,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 135,
                                          top: 0,
                                          child: SizedBox(
                                            width: 82,
                                            height: 46,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Text(
                                                    'Destino',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 24,
                                                      fontFamily: 'Arimo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 6,
                                                  top: 28,
                                                  child: Text(
                                                    'AM 10:00',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF444B6E),
                                                      fontSize: 16,
                                                      fontFamily: 'Arimo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: SizedBox(
                                            width: 79,
                                            height: 46,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Text(
                                                    'Origem',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 24,
                                                      fontFamily: 'Arimo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 10,
                                                  top: 28,
                                                  child: Text(
                                                    'AM 8:00',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF444B6E),
                                                      fontSize: 16,
                                                      fontFamily: 'Arimo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 254,
                                  top: 37,
                                  child: Text(
                                    'Seg. 10/06',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF444B6E),
                                      fontSize: 12,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 200,
                                  top: 0,
                                  child: SizedBox(
                                    width: 113,
                                    height: 16,
                                    child: Stack(
                                      children: [
                                        const Positioned(
                                          left: 12,
                                          top: 0,
                                          child: Text(
                                            'Em andamento',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF190482),
                                              fontSize: 14,
                                              fontFamily: 'Arimo',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 7,
                                          child: Container(
                                            width: 3,
                                            height: 3,
                                            decoration: const ShapeDecoration(
                                              color: Color(0xFF190482),
                                              shape: OvalBorder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 11,
                  top: 444,
                  child: SizedBox(
                    height: 92.50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 11,
                          top: 0,
                          child: SizedBox(
                            width: 315,
                            height: 85,
                            child: Stack(
                              children: [
                                const Positioned(
                                  left: 303,
                                  top: 62,
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Número do voo',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 3,
                                  top: 30,
                                  child: SizedBox(
                                    width: 217,
                                    height: 46,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 135,
                                          top: 0,
                                          child: SizedBox(
                                            width: 82,
                                            height: 46,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Text(
                                                    'Destino',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 24,
                                                      fontFamily: 'Arimo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 6,
                                                  top: 28,
                                                  child: Text(
                                                    'AM 10:00',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF444B6E),
                                                      fontSize: 16,
                                                      fontFamily: 'Arimo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: SizedBox(
                                            width: 79,
                                            height: 46,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Text(
                                                    'Origem',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 24,
                                                      fontFamily: 'Arimo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 10,
                                                  top: 28,
                                                  child: Text(
                                                    'AM 8:00',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF444B6E),
                                                      fontSize: 16,
                                                      fontFamily: 'Arimo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 254,
                                  top: 37,
                                  child: Text(
                                    'Seg. 10/06',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF444B6E),
                                      fontSize: 12,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 252,
                                  top: 0,
                                  child: SizedBox(
                                    width: 61,
                                    height: 16,
                                    child: Stack(
                                      children: [
                                        const Positioned(
                                          left: 12,
                                          top: 0,
                                          child: Text(
                                            'Normal',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF34D300),
                                              fontSize: 14,
                                              fontFamily: 'Arimo',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 7,
                                          child: Container(
                                            width: 3,
                                            height: 3,
                                            decoration: const ShapeDecoration(
                                              color: Color(0xFF34D300),
                                              shape: OvalBorder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
