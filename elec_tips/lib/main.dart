import 'package:flutter/material.dart';
import 'package:elec_tips/login.dart';
import 'package:elec_tips/signup.dart';
import 'package:elec_tips/trips.dart';
import 'package:elec_tips/leaderboard.dart';
import 'package:elec_tips/efficiency.dart';

void main() => runApp(MaterialApp(
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












