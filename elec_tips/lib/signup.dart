import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);



  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Efficiency',
      style: optionStyle,
    ),
    Text(
      'Index 1: My trips',
      style: optionStyle,
    ),
    Text(
      'Index 2: Leaderboard',
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
      backgroundColor: const Color.fromARGB(255, 220, 233, 196),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.speed_sharp),
            label: 'Efficiency',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location_outlined),
            label: 'My trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Leaderboard',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),

      body: Container(

        child: Stack(
            children: <Widget>[

              Column(
                children:<Widget>[
                  Container(

                    child: ElevatedButton(

                      child: new Text("Delete",
                        style: TextStyle(color: Colors.white, fontSize: 22, fontFamily: "Quicksand"),
                        textAlign: TextAlign.left,

                      ),

                      onPressed: () {
                        Navigator.pushNamed(context, '/efficiency');

                      },
                    ),
                  ),


                ],

              ),

            ]

        ),

      ),

    );
  }
}