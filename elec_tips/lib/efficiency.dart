import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class EfficiencyPage extends StatefulWidget {
  const EfficiencyPage({Key? key}) : super(key: key);

  @override
  _EfficiencyPageState createState() => _EfficiencyPageState();
}

class _EfficiencyPageState extends State<EfficiencyPage> {
  @override
  final textController = TextEditingController();
  final tripNameController = TextEditingController();
  CollectionReference distance = FirebaseFirestore.instance.collection('distance');
  //final textcontroller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Stack(
          children: <Widget>[
            Column(
              children:<Widget>[
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                      'Calculate your savings!',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 30, fontFamily: "Martel", fontWeight: FontWeight.bold, ),
                      textAlign: TextAlign.center ),


                ),

                SizedBox(height: 100),
                Container( //current location
                  margin: const EdgeInsets.only(right: 25, left: 25),
                  padding: const EdgeInsets.all(15),
                  alignment: const Alignment( 2.0, 3.0),
                  child: TextField(
                    controller: tripNameController,
                    enabled: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 88, 89, 91),
                      hintText: 'Trip name',
                      hintStyle: TextStyle(fontSize: 14.0, color: Color.fromARGB(255, 204, 204, 204)),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 25, left: 25),
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment( 0.0, 5.0),
                  child: TextField(
                    controller: textController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 88, 89, 91),
                      hintText: "Trip distance in miles",
                      hintStyle: TextStyle(fontSize: 14.0, color: Color.fromARGB(255, 204, 204, 204)),
                    ),
                    enabled: true,
                  ),
                ),

                SizedBox(height:180),
                ElevatedButton(child: Text('Calculate Stats',
                  style: TextStyle(fontFamily: "Martel", color: Color.fromARGB(255, 255, 255, 255), fontSize: 20, fontWeight: FontWeight.bold),
                ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      primary: const Color.fromARGB(255, 176, 7, 21),
                      fixedSize: const Size(320, 50),
                    ),
                    onPressed: ()  {
                      distance.add({
                        "totalMiles": textController.text,
                        "tripName": tripNameController.text
                      });
                      Navigator.pushNamed(context, '/stats');
                      setState(() {
                      });

                    }
                ),

              ],
            ),

          ],
        ),
      ),

    );
  }
}