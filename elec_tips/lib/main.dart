import 'package:flutter/material.dart';
import 'package:elec_tips/login.dart';
import 'package:elec_tips/signup.dart';
import 'package:elec_tips/trips.dart';
import 'package:elec_tips/leaderboard.dart';
import 'package:elec_tips/efficiency.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBlJI6RfoVL6S24klFAopEXMYKFfKwMuuk", // Your apiKey
      appId: "1:791602728992:android:c16e538f01ed88a30aec45", // Your appId
      messagingSenderId: "791602728992", // Your messagingSenderId
      projectId: "electips-c1cbd", // Your projectId
    ),
  );

  runApp(MaterialApp(
    //initialRoute: '/login', //change route to '/' when done with app so that loading screen works
    home: LoginPage(),
    routes: {
      '/login': (context) => LoginPage(),
      '/trips': (context) => TripsPage(),
      '/leaderboard': (context) => LeaderboardPage(),
      '/signup': (context) => SignupPage(),
      '/efficiency': (context) => EfficiencyPage(),
    },
  ));
}












