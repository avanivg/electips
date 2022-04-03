import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class TripsPage extends StatefulWidget {
  const TripsPage({Key? key}) : super(key: key);

  @override
  _TripsPageState createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  @override
  CollectionReference distance = FirebaseFirestore.instance.collection('distance');


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          bottomOpacity: 0.0,
          toolbarHeight: 70,
          elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        flexibleSpace: Container(
        color: Color.fromARGB(255, 255, 255, 255),
    child: Column(
    children: [
      SizedBox(height:70),
    Container(


    color: Color.fromARGB(255, 255, 255, 255),

    ),
    Align(
    alignment: Alignment.center,
    child: Text('My Trips',
    style: TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Martel',
    ),
    ),
    )]))),
      body: Center(
        child: StreamBuilder (
            stream: distance.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                //loading screen
                return Center(child: Text('Loading'));
              }
              return ListView(
                itemExtent: 85.0,
                padding: EdgeInsets.only(top: 0, right: 20, left: 20, bottom: 40),
                children: snapshot.data!.docs.map((dist) {
                  return Center(
                    child: ListTile(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                        tileColor: Color.fromARGB(255, 88, 89, 91),
                        title: Text(dist['tripName'],
                          style: TextStyle(
                            fontFamily: "Martel",
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        /*leading: Text(dist['tripName'],
                        style: TextStyle(
                          fontFamily: "Martel",
                          fontSize: 14,
                        ),
                      ),*/
                        subtitle: Text(dist['totalMiles'],
                          style: TextStyle(
                            fontFamily: "Martel",
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        onLongPress: () {
                          dist.reference.delete();
                        }
                    ),
                  );
                }).toList(),
              );
            }),
      ),

    );
  }
}