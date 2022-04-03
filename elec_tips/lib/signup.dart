import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 233, 196),

      // appBar: AppBar(
      //     title: Text('User is (Logged ' + (user == null ? 'out' : 'in') + ')'),
      // ),

      body: Container(
        margin: EdgeInsets.fromLTRB(50, 50, 50, 50),

        child: Stack(
          children: <Widget>[
            Column(
                children:<Widget>[
                  SizedBox(height: 50),

                  Container(
                    child: Align(
                      child: Text("Create an account",
                          style: TextStyle(color: Color.fromARGB(255, 28, 49, 68), fontSize: 30, fontFamily: "Quicksand"),
                          textAlign: TextAlign.left),
                    ),
                  ),

                ]),
            Column(
              children: <Widget>[

                SizedBox(height: 170),

                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Username:",
                        style: TextStyle(color: Color.fromARGB(255, 28, 49, 68), fontSize: 24, fontFamily: "Quicksand"),
                        textAlign: TextAlign.left),
                  ),
                ),

                SizedBox(height: 10),

                TextField(controller: emailController,
                  style: TextStyle(height: 0.75),
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 254, 246, 215),
                    isDense: true,
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    filled: true,

                  ),
                ),

                SizedBox(height: 50),

                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Password:",
                        style: TextStyle(color: Color.fromARGB(255, 28, 49, 68), fontSize: 24, fontFamily: "Quicksand"),
                        textAlign: TextAlign.left),
                  ),
                ),

                SizedBox(height: 10),

                TextField(controller: passwordController,
                  style: TextStyle(height: 0.75),
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 254, 246, 215),
                    isDense: true,
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    filled: true,

                  ),
                ),





                SizedBox(height: 150),

                Row(
                    children: [

                      ElevatedButton(
                          child: Text('Sign In'),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            primary: const Color.fromARGB(255, 28, 49, 68),
                            fixedSize: const Size(290, 40),
                          ),
                          onPressed: () async {
                            Navigator.pushNamed(context, '/navbar');
                            await FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                            setState(() {
                            });

                          }),

                    ]

                )
              ],
            ),
          ],
        ),



      ),

    );
  }
}
