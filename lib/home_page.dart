import 'package:flutter/material.dart';
import 'planet_list_page.dart';
import 'about_page.dart';
import 'solar_system_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    PlanetListPage(),
    SolarSystemPage(),
    AboutPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/app_icon.png', // Assurez-vous d'avoir ajouté cette icône dans les assets
              width: 30,
              height: 30,
            ),
            SizedBox(width: 10),
            Text('النظام الشمسي'),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'الكواكب',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: 'النظام الشمسي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'حول',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
