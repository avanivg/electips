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
      resizeToAvoidBottomInset : false,
      backgroundColor: const Color.fromARGB(255, 88, 89, 91),
      body: Center(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(height: 100),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Center(
                      child: const Text(

                        'View Cost Savings',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30, fontFamily: "Martel", fontWeight: FontWeight.bold, color: Color.fromARGB(255,255, 255, 255),

                        ),
                      )
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 50, left: 50, top: 40),
                  padding: const EdgeInsets.all(18),
                  alignment: Alignment.topLeft,
                  child: Stack(
                    children: const [
                      Align(
                          alignment: Alignment(-.5, -.6),
                          child: Text(
                            "Ideal speed:",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22, fontFamily: "Martel"),
                          )
                      ),
                      Align(
                          alignment: Alignment(0, .5),
                          child: const Text(
                            //contentPadding: EdgeInsets.all(15.0),
                            "48 mph",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22, fontFamily: "Martel", color: Color.fromARGB(255, 28, 49, 68)
                            ),

                          )),
                    ],
                  ),
                  width: 190.0,
                  height: 160.0,
                  decoration:  BoxDecoration(

                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        width: 5,
                        color: Color.fromARGB(255, 176, 7, 21),  // red as border color
                      ),
                      borderRadius: BorderRadius.only(
                        //BorderRadius.color(Color.fromARGB(255, 176, 7, 21),),
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(150),
                          bottomLeft: Radius.circular(150))),
                ),
                SizedBox(height:10),
                Container(
                  margin: const EdgeInsets.only(right: 50, left: 50, top: 40),
                  padding: const EdgeInsets.all(28),
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    children: <Widget> [
                      SizedBox(height:50),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Savings: ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22, fontFamily: "Martel"),
                        ),
                      ),
                      Align(
                          alignment: Alignment(0, .5),
                          child: Text(
                            //contentPadding: EdgeInsets.all(15.0),
                            "\$62.86",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22, fontFamily: "Martel", color: Color.fromARGB(255, 28, 49, 68)
                            ),
                          )),
                    ],
                  ),
                  width: 190.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        width: 5,
                        color: Color.fromARGB(255, 176, 7, 21),  // red as border color
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(150),
                          bottomLeft: Radius.circular(150))),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      width: 120,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            primary: const Color.fromARGB(255, 176, 7, 21),
                          ),
                          child: const Text('Save',
                              style: TextStyle(
                                  fontSize: 25, fontFamily: "Martel", color: Color.fromARGB(255,255,255,255)
                              )),

                          onPressed: () {
                            Navigator.pushNamed(context, '/navbar');
                            setState(() {});
                          }),
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