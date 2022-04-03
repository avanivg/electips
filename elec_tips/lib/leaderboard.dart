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
      resizeToAvoidBottomInset : false,
      backgroundColor: const Color.fromARGB(255, 88, 89, 91),
      body: Center(

        child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 40),

                child: const Text(
                    'Leaderboard',
                    style: TextStyle (fontSize: 40, fontFamily: "Martel", fontWeight: FontWeight.bold, color: Colors.white)
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
                                title:Text("Grace \t\t\t\t \t\t \t\t \t\t \t\t \t\t  \$74.66",   style: TextStyle(fontSize: 20, fontFamily: "Martel", fontWeight: FontWeight.bold)) ,

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
                              title: Text("Aaron \t\t\t\t \t\t \t\t \t\t \t\t \t\t  \$62.86",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
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
                                title: Text("Shagun \t\t\t\t \t\t \t\t \t\t \t\t\t \$61.42",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
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
                                title: Text("Rohan \t\t\t\t \t\t \t\t \t\t \t\t \t\t  \$55.01",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
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
                                title: Text("Mireya \t\t\t\t \t\t \t\t \t\t \t\t\t  \$47.99",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
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
                                title: Text("Shreya \t\t\t\t \t\t \t\t \t\t \t\t    \$43.28",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
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
                                title: Text("Avani \t\t\t\t \t\t \t\t \t\t \t\t \t\t  \$40.83",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
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
                                title: Text("Shakthi \t\t\t\t \t\t \t\t \t\t \t\t \t\$29.10",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
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
                                title: Text("Pari \t\t\t\t \t\t \t\t \t\t \t\t \t\t \t\t\t  \$28.47",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
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
                                title: Text("Neha \t\t\t\t \t\t \t\t \t\t \t\t \t\t\t\t   \$18.86",   style: TextStyle(fontSize: 20, fontFamily: "Martel")),
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