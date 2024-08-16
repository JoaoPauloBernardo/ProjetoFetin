import 'package:flutter/material.dart';
import 'package:flutter_teste_1/agenda_teste_fetin_1.dart';
import 'package:flutter_teste_1/escala_teste_fetin_1.dart';
import 'package:flutter_teste_1/home_page_teste_fetin_1.dart';
import 'package:flutter_teste_1/perfil_teste_fetin_1.dart';

class NavegationMenu extends StatefulWidget {
  const NavegationMenu({super.key});

  @override
  _NavegationMenuState createState() => _NavegationMenuState();
}

class _NavegationMenuState extends State<NavegationMenu> {
  int _selectedIndex = 0;

  final _screens = [
    const HomePageTesteFetin1(),
    const EscalasTesteFetin1(),
    const AgendaTesteFetin1(),
    const PerfilTesteFetin1()
  ];

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 61,
        elevation: 0,
        backgroundColor: const Color(0xFF190482),
        indicatorColor: const Color.fromARGB(166, 2, 230, 255),
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onDestinationSelected,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home, color: Colors.white,), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.airplanemode_active, color: Colors.white,), label: 'Escalas'),
          NavigationDestination(icon: Icon(Icons.calendar_month, color: Colors.white,), label: 'Agenda'),
          NavigationDestination(icon: Icon(Icons.person, color: Colors.white,), label: 'Perfil'),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}