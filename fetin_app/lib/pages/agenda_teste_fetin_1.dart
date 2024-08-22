import 'package:flutter/material.dart';

class AgendaTesteFetin1 extends StatefulWidget {
  const AgendaTesteFetin1({super.key});

  @override
  State<AgendaTesteFetin1> createState() => _AgendaTesteFetin1State();
}

class _AgendaTesteFetin1State extends State<AgendaTesteFetin1> {
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
              left: 251,
              top: 26,
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
              left: 0,
              top: 579,
              child: SizedBox(
                width: 360,
                height: 61,
                child: Stack(
                  children: [
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
                              top: 0,
                              child: SizedBox(
                                width: 35,
                                height: 39,
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
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 225,
                              top: 2,
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
