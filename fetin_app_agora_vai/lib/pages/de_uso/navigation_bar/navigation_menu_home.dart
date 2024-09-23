import 'package:fetin_app_agora_vai/pages/de_uso/home_page.dart';
import 'package:flutter/material.dart';
// import 'package:fetin_app_agora_vai/pages/de_uso/agenda_page.dart';
import 'package:fetin_app_agora_vai/pages/de_uso/escala_page.dart';
import 'package:fetin_app_agora_vai/pages/de_uso/perfil_page.dart';

class NavigationMenu extends StatefulWidget {
  final int? swtichIndex;

  const NavigationMenu({
    super.key,
    this.swtichIndex, 
    });

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;
  final _screens = [
    const HomePage(),
    const EscalasTesteFetin1(),
    // const AgendaTesteFetin1(),
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
        height: kBottomNavigationBarHeight,
        elevation: 0,
        backgroundColor: const Color(0xFF190482),
        indicatorColor: const Color(0xFF190482),
        selectedIndex: _selectedIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        animationDuration: Duration(microseconds: 100),
        indicatorShape: CircleBorder(),
        onDestinationSelected: _onDestinationSelected,
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.home,
                size: 40,
                color: Colors.blue, // cor do ícone selecionado
              ),
              label: ''),
          NavigationDestination(
              icon: Icon(
                Icons.airplanemode_active,
                size: 40,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.airplanemode_active,
                size: 40,
                color: Colors.blue, // cor do ícone selecionado
              ),
              label: ''),
          // NavigationDestination(
          //     icon: Icon(
          //       Icons.calendar_month,
          //       size: 40,
          //       color: Colors.white,
          //     ),
          //     selectedIcon: Icon(
          //       Icons.calendar_month,
          //       size: 40,
          //       color: Colors.blue, // cor do ícone selecionado
          //     ),
          //     label: ''),
          NavigationDestination(
              icon: Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.person,
                size: 40,
                color: Colors.blue, // cor do ícone selecionado
              ),
              label: ''),
          
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}
