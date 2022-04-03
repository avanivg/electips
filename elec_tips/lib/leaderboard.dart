import 'package:flutter/material.dart';

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({Key? key}) : super(key: key);
  @override
  _LeaderboardPageState createState() => _LeaderboardPageState();
}
class _LeaderboardPageState extends State<LeaderboardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            children: <Widget>[
       Container(
            padding: const EdgeInsets.only(top: 40),

            child: const Text(
                'Leaderboard',
                style: TextStyle (fontSize: 40, fontFamily: "Martel", fontWeight: FontWeight.bold)
            ),

          ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
          width: 325,
          height: 595,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 176, 7, 21),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
           child: SizedBox(
               height: 525,
            child: ListView(
              children: [
                Card(
                    elevation: 10,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //child: Material(
                      child: ListTile(
                        title:Text("Grace",   style: TextStyle(fontSize: 20, fontFamily: "Martel")) ,

                      )
                 // ),
                  ),

                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      //child: Material(
                      child: ListTile(
                        title: Text("Aaron",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
                      ),
                   // ),
                  ),

                  Card(
                    elevation: 10,
                    //child: Material(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    child: ListTile(
                        title: Text("Shagun",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
                      )
                //  ),
                ),


                  Card(
                    //child: Material(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),

                        borderRadius: BorderRadius.circular(10),
                      ),
                    child: ListTile(
                        title: Text("Rohan",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
                      )
                  //),
                ),


                Card(
                 // child: Material(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child: ListTile(
                      title: Text("Mireya",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
                    )
               // ),
              ),


                  Card(
                    //child: Material(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    child: ListTile(
                        title: Text("Shreya",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
                      )
                 // ),
                ),
                  Card(
                   // child: Material(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Text("Avani",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
                      )
                 // ),
                ),

                Card(
                  //child: Material(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text("Shakthi",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
                    )
                //),
              ),


                  Card(
                   // child: Material(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Text("Pari",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
                      )
                //  ),
                ),

                Card(
                 // child: Material(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text("Neha",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
                    )
               // ),
              ),
              ],
              padding: const EdgeInsets.all(13),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
            )
           )
        ),
            ]),
      ),
    );
  }
}

