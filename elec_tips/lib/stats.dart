
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class StatsPage extends StatefulWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(height: 50),
                Container(
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: const Text(

                        'Here are your cost saving stats: ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25, fontFamily: "Martel"),

                      ),
                    )

                ),
                Container(
                  margin: const EdgeInsets.only(right: 50, left: 50),
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.topLeft,
                  child: Stack(
                    children: const [
                      Align(
                          alignment: Alignment(-.5, -.6),
                          child: Text(
                            "Ideal speed... ",
                            style: TextStyle(fontSize: 19, fontFamily: "Martel"),
                          )
                      ),
                      Align(
                          alignment: Alignment(0, .5),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "48 mph",
                              hintStyle: TextStyle(
                                  fontSize: 21, fontFamily: "Martel", color: Color.fromARGB(255, 28, 49, 68)
                              ),
                            ),

                            enabled: true,
                          )),
                    ],
                  ),
                  width: 160.0,
                  height: 160.0,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 254, 246, 215),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        //topRight: Radius.circular(150),
                          bottomRight: Radius.circular(150),
                          bottomLeft: Radius.circular(150))),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 50, left: 50, top: 30),
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    children: const [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Cost savings... ",
                          style: TextStyle(fontSize: 20, fontFamily: "Martel"),
                        ),
                      ),
                      Align(
                          alignment: Alignment(0, .5),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "70 points",
                              hintStyle: TextStyle(
                                  fontSize: 21, fontFamily: "Martel", color: Color.fromARGB(255, 28, 49, 68)
                              ),
                            ),

                            enabled: true,
                          )),
                    ],
                  ),
                  width: 160.0,
                  height: 160.0,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 254, 246, 215),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                          bottomRight: Radius.circular(150),
                          bottomLeft: Radius.circular(150))),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      width: 120,
                      height: 60,
                      // child: ElevatedButton(
                      //     style: ElevatedButton.styleFrom(
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(20)
                      //       ),
                      //       primary: const Color.fromARGB(255, 176, 7, 21),
                      //     ),
                      //     child: const Text('Add trip',
                      //         style: TextStyle(
                      //             fontSize: 21, fontFamily: "Martel", color: Color.fromARGB(255,255,255,255)
                      //         )),
                      //
                      //     onPressed: () {
                      //       setState(() {});
                      //     }),
                    )

                )
              ],
            ),
          ],
        ),

      ),
    );
  }
}