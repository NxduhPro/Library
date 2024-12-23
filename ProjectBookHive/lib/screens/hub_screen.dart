import '/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'hubscreens/hub_inventory.dart';

class HubPage extends StatefulWidget {
  const HubPage({super.key});

  @override
  _HubPageState createState() => _HubPageState();
}

class _HubPageState extends State<HubPage> {
  int _selectedIndex = 0;
  String _hubtitle = 'Booking';
  // List of widgets to display for each tab
  static const List<Widget> _pages = <Widget>[
    Center(child: Text('Notifications Page')),
    Center(child: Text('Notifications Page')),
    hub_inventory_screen(),
    Center(child: Text('Notifications Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      switch (index + 1) {
        case 1:
          _hubtitle = 'BOOKING';
          break;
        case 2:
          _hubtitle = 'LIBRARY';
          break;
        case 3:
          _hubtitle = 'INVENTORY';
          break;
        case 4:
          _hubtitle = 'SETTINGS';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.accentShade,
        elevation: 1, 
        title: Text(
          _hubtitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
            color: AppTheme.dark,
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Booking',
            backgroundColor: AppTheme.accentShade,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
            backgroundColor: AppTheme.accentShade,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2),
            label: 'Inventory',
            backgroundColor: AppTheme.accentShade,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: AppTheme.accentShade,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppTheme.dark,
        unselectedItemColor: AppTheme.light,
        selectedFontSize: 10,
        unselectedFontSize: 1,
        onTap: _onItemTapped,
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HubPage(),
  ));
}
