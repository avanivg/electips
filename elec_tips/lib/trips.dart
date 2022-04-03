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

      body: Center(
        child: StreamBuilder (
            stream: distance.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                //loading screen
                return Center(child: Text('Loading'));
              }
              return ListView(
                padding: EdgeInsets.all(12),
                children: snapshot.data!.docs.map((dist) {
                  return Center(
                    child: ListTile(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                      tileColor: Color.fromARGB(255, 88, 89, 91),
                      title: Text('Travel Distance',
                        style: TextStyle(
                          fontFamily: "Martel",
                          fontSize: 14,
                        ),
                      ),
                      leading: Text(dist['tripName'],
                        style: TextStyle(
                          fontFamily: "Martel",
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(dist['totalMiles'],
                        style: TextStyle(
                          fontFamily: "Martel",
                          fontSize: 14,
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

