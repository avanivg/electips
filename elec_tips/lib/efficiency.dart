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
      backgroundColor: const Color.fromARGB(255, 220, 233, 196),
      body: Center(
        child: Stack(
          children: <Widget>[
        Column(
            children:<Widget>[
              const SizedBox(height: 50),
        Container(
          padding: const EdgeInsets.all(15),
              child: const Text(
                'Calculate your efficiency!',
                style: TextStyle (fontSize: 25),
          ),
      ),
     Container( //current location
       margin: const EdgeInsets.only(right: 50, left: 50),
         padding: const EdgeInsets.all(15),
        alignment: const Alignment( 2.0, 3.0),
        child: TextField(
          controller: tripNameController,
          enabled: true,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(15.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 254, 246, 215),
            hintText: 'Trip name'
          ),
      ),
      ),
              Container(
                margin: const EdgeInsets.only(right: 50, left: 50),
                padding: const EdgeInsets.all(15),
                alignment: Alignment( 0.0, 5.0),
                child: TextField(
                  controller: textController,
                  maxLines: 1,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 254, 246, 215),
                      hintText: "Trip distance in miles"),
                  enabled: true,
                ),
              ),
              ElevatedButton(child: Text('Calculate Stats'),
                  onPressed: ()  {
                    distance.add({
                      "totalMiles": textController.text,
                      "tripName": tripNameController.text
                    });
                    Navigator.pushNamed(context, '/stats');
                    setState(() {
                    });

                  }),

            ],
      ),
            /*
            TextField(

              maxLines: 1,
              decoration: InputDecoration(
                //contentPadding: EdgeInsets.all(15.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 254, 246, 215),
                  hintText: "Ideal Speed"),
            ),
            Column( //ideal speed
                  children:/* <Widget>*/[
                   // const SizedBox(height: 10),
                    Row (
                     children: /*<Widget>*/[/*
                     Container(
                        margin: const EdgeInsets.only(right: 50, left: 50),
                        padding: const EdgeInsets.all(15),
                        alignment: Alignment( 0.0, 5.0),*/
                        TextField(

                            maxLines: 1,
                            decoration: InputDecoration(
                            //contentPadding: EdgeInsets.all(15.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 254, 246, 215),
                            hintText: "Ideal Speed"),
    ),
                      //  ),

                     ],
                    ),
                    Row(
                      //add second row with returned data value here
                    )
                    ],
              ),*/
          ],
        ),
        ),

    );
  }
}
