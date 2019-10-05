import 'package:flutter/material.dart';
import 'package:travex/createtrip.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Explore',
      style: optionStyle,
    ),
    Text(
      'Index 1: Saved',
      style: optionStyle,
    ),
    CreateTrip(),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Saved'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            title: Text('Trip'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xfff05042),
        onTap: _onItemTapped,
        unselectedItemColor: Color(0xff3a3a3a),
        showUnselectedLabels: true,
      ),
    );
  }
}
