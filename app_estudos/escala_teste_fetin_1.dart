import 'package:flutter/material.dart';

class EscalasTesteFetin1 extends StatefulWidget {
  const EscalasTesteFetin1({super.key});

  @override
  State<EscalasTesteFetin1> createState() => _EscalasTesteFetin1State();
}

class _EscalasTesteFetin1State extends State<EscalasTesteFetin1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(alignment: Alignment.center, children: [
      Container(
        width: 360,
        height: 640,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            const Positioned(
              left: 303,
              top: 25,
              child: SizedBox(
                width: 44,
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
              left: 22,
              top: 74,
              child: SizedBox(
                width: 315,
                height: 85,
                child: Stack(
                  children: [
                    Positioned(
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
                    Positioned(
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
                    Positioned(
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
                                          fontWeight: FontWeight.w400,
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
                                          fontWeight: FontWeight.w400,
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
                                          fontWeight: FontWeight.w400,
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
            const Positioned(
              left: 22,
              top: 181,
              child: SizedBox(
                width: 315,
                height: 85,
                child: Stack(
                  children: [
                    Positioned(
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
                    Positioned(
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
                    Positioned(
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
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 6,
                                      top: 28,
                                      child: Text(
                                        'PM 12:00',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF444B6E),
                                          fontSize: 16,
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
                                          fontWeight: FontWeight.w400,
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
                                          fontWeight: FontWeight.w400,
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
            const Positioned(
              left: 22,
              top: 284,
              child: SizedBox(
                width: 315,
                height: 85,
                child: Stack(
                  children: [
                    Positioned(
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
                    Positioned(
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
                    Positioned(
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
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 6,
                                      top: 28,
                                      child: Text(
                                        'PM 14:00',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF444B6E),
                                          fontSize: 16,
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
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 6,
                                      top: 28,
                                      child: Text(
                                        'PM 12:00',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF444B6E),
                                          fontSize: 16,
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
                          ],
                        ),
                      ),
                    ),
                    Positioned(
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
            const Positioned(
              left: 22,
              top: 410,
              child: SizedBox(
                width: 315,
                height: 85,
                child: Stack(
                  children: [
                    Positioned(
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
                    Positioned(
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
                    Positioned(
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
                                          fontWeight: FontWeight.w400,
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
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      top: 28,
                                      child: Text(
                                        'AM 8:00',
                                        style: TextStyle(
                                          color: Color(0xFF444B6E),
                                          fontSize: 16,
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
                          ],
                        ),
                      ),
                    ),
                    Positioned(
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
            const Positioned(
              left: 20,
              top: 513,
              child: SizedBox(
                width: 315,
                height: 85,
                child: Stack(
                  children: [
                    Positioned(
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
                    Positioned(
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
                    Positioned(
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
                                          fontWeight: FontWeight.w400,
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
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      top: 28,
                                      child: Text(
                                        'AM 8:00',
                                        style: TextStyle(
                                          color: Color(0xFF444B6E),
                                          fontSize: 16,
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
                          ],
                        ),
                      ),
                    ),
                    Positioned(
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
            Positioned(
              left: 17,
              top: 16,
              child: Container(
                width: 35,
                height: 34.19,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/35x34"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 53,
              child: SizedBox(
                width: 339,
                height: 18,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 11,
                      child: Container(
                        width: 128,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF1F2233),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 211,
                      top: 11,
                      child: Container(
                        width: 128,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF1F2233),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 130,
                      top: 0,
                      child: Text(
                        'Seg. 10/06',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
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
              left: 10,
              top: 387,
              child: SizedBox(
                width: 338,
                height: 18,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 11,
                      child: Container(
                        width: 132,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF1F2233),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 206,
                      top: 11,
                      child: Container(
                        width: 132,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF1F2233),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 135,
                      top: 0,
                      child: Text(
                        'ter. 11/06',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
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
              left: 0,
              top: 579,
              child: SizedBox(
                width: 360,
                height: 61,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 360,
                        height: 61,
                        decoration: const BoxDecoration(color: Color(0xFF190482)),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 13,
                      child: SizedBox(
                        width: 260,
                        height: 35,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/35x35"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 150,
                              top: 0,
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/35x35"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 225,
                              top: 0,
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/35x35"),
                                    fit: BoxFit.cover,
                                  ),
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
    ])));
  }
}
