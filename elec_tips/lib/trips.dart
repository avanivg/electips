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
          title: Text('Testing Trips')
      ),
      body: Center(
        child: StreamBuilder (
            stream: distance.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                //loading screen
                return Center(child: Text('Loading'));
              }
              return ListView(
                children: snapshot.data!.docs.map((dist) {
                  return Center(
                    child: ListTile(
                      title: Text('Travel Distance'),
                      leading: Text(dist['tripName']),
                      subtitle: Text(dist['totalMiles']),
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

