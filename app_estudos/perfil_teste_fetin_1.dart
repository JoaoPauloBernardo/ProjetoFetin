import 'package:flutter/material.dart';

class PerfilTesteFetin1 extends StatefulWidget {
  const PerfilTesteFetin1({super.key});

  @override
  State<PerfilTesteFetin1> createState() => _PerfilTesteFetin1State();
}

class _PerfilTesteFetin1State extends State<PerfilTesteFetin1> {
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
              left: 306,
              top: 28,
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
              left: 16,
              top: 22,
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
              left: 120,
              top: 73,
              child: SizedBox(
                height: 155,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/120x120"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 3,
                      top: 127,
                      child: Text(
                        'username',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
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
              left: 19,
              top: 249,
              child: SizedBox(
                width: 169,
                height: 268,
                child: Stack(
                  children: [
                    Positioned(
                      left: 3,
                      top: 0,
                      child: SizedBox(
                        width: 166,
                        height: 44,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 3,
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF747DAA),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 21,
                              top: 0,
                              child: Text(
                                'Identificação:',
                                style: TextStyle(
                                  color: Color(0xFF444B6E),
                                  fontSize: 18,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 21,
                              top: 21,
                              child: Text(
                                'xxxx.xxxx.xxxx',
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
                      left: 0,
                      top: 112,
                      child: SizedBox(
                        width: 113,
                        height: 44,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 3,
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF747DAA),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 21,
                              top: 0,
                              child: Text(
                                'Cargo:',
                                style: TextStyle(
                                  color: Color(0xFF444B6E),
                                  fontSize: 18,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 21,
                              top: 21,
                              child: Text(
                                'Ex. Piloto',
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
                      left: 0,
                      top: 168,
                      child: SizedBox(
                        width: 99,
                        height: 44,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 3,
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF747DAA),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 21,
                              top: 0,
                              child: Text(
                                'Empresa:',
                                style: TextStyle(
                                  color: Color(0xFF444B6E),
                                  fontSize: 18,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 21,
                              top: 21,
                              child: Text(
                                'Ex. Gol',
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
                      left: 0,
                      top: 56,
                      child: SizedBox(
                        width: 141,
                        height: 44,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 3,
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF747DAA),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 21,
                              top: 0,
                              child: Text(
                                'Nacionalidade:',
                                style: TextStyle(
                                  color: Color(0xFF444B6E),
                                  fontSize: 18,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 21,
                              top: 21,
                              child: Text(
                                'Brasil',
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
                      left: 0,
                      top: 224,
                      child: SizedBox(
                        width: 150,
                        height: 44,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 3,
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF747DAA),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 21,
                              top: 0,
                              child: Text(
                                'Aeroporto base:',
                                style: TextStyle(
                                  color: Color(0xFF444B6E),
                                  fontSize: 18,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 21,
                              top: 21,
                              child: Text(
                                'Ex. Galeão',
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
                        decoration:
                            const BoxDecoration(color: Color(0xFF190482)),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 11,
                      child: SizedBox(
                        width: 260,
                        height: 39,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 2,
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
                              top: 2,
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
                              child: SizedBox(
                                width: 35,
                                height: 39,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 39,
                                      child: Container(width: 35),
                                    ),
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
              ),
            ),
          ],
        ),
      )
    ])));
  }
}
