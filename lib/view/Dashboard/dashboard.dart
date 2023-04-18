import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _dashboardState();

}

class _dashboardState extends State<Dashboard> {
  int _selectedIndex = 1;

  static List<Widget> _widgetOptions = <Widget> [
    Text(
      'Index 0: Home',
    ),
    Home(),
    Text(
      'Index 2: School',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold (
          appBar: AppBar(
            title: Text("sdfsdf"),
          ),
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.add_chart), label: "chart"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: "acount"),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onTapped,
            elevation: 50,
          ),
        )
    );
  }

  void _onTapped (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}