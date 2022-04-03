import 'package:elec_tips/efficiency.dart';
import 'package:elec_tips/stats.dart';
import 'package:flutter/material.dart';
import 'package:elec_tips/leaderboard.dart';
import 'package:elec_tips/trips.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({Key? key}) : super(key: key);

  @override
  _NavbarPageState createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    EfficiencyPage(),
    TripsPage(),
    LeaderboardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        unselectedIconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        unselectedLabelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontFamily: "Martel", fontWeight: FontWeight.bold ), // FIGURE THIS OUT

        backgroundColor: Color.fromARGB(255, 176, 7, 21),



        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.speed_sharp,
              //color: Color.fromARGB(255, 28, 49, 68),
            ),
            label: 'Efficiency',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location_outlined,
              //color: Color.fromARGB(255, 28, 49, 68),
            ),
            label: 'My trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_sharp,
              //color: Color.fromARGB(255, 28, 49, 68),
            ),
            label: 'Leaderboard',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 254, 214, 215),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
