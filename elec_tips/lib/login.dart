import 'package:elec_tips/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      child: Text("Welcome back!",
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

                SizedBox(height:10),

                Row(
                    children: [

                      Text("New? ", style: TextStyle(color: Color.fromARGB(255, 28, 49, 68),)),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignupPage())
                          );

                        },
                        child:  Text("Create account",
                          style: TextStyle(decoration: TextDecoration.underline, color: Color.fromARGB(255, 28, 49, 68),

                          ),
                        ),

                      ),







                    ]
                ),

                SizedBox(height: 150),

                Row(
                    children: [
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ElevatedButton(
                          child: Text('Log in'),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            primary: const Color.fromARGB(255, 28, 49, 68),
                            fixedSize: const Size(290, 40),
                          ),
                          onPressed: () async {
                            Navigator.pushNamed(context, '/navbar');
                            await Firebase.initializeApp();
                            await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text
                            );
                            setState(() {
                            });

                          }),

                      // ElevatedButton(
                      //     child: Text('Sign In'),
                      //     style: ElevatedButton.styleFrom(
                      //         shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(20)
                      //         ),
                      //         primary: const Color.fromARGB(255, 28, 49, 68),
                      //         fixedSize: const Size(80, 40),
                      //     ),
                      //     onPressed: () async {
                      //       await FirebaseAuth.instance.signInWithEmailAndPassword(
                      //         email: emailController.text,
                      //         password: passwordController.text,
                      //       );
                      //       setState(() {
                      //       });
                      //
                      //     }),
                      // ElevatedButton(
                      //     child: Text('Log out'),
                      //     style: ElevatedButton.styleFrom(
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(20)
                      //       ),
                      //       primary: const Color.fromARGB(255, 28, 49, 68),
                      //       fixedSize: const Size(100, 40),
                      //     ),
                      //     onPressed: () async {
                      //       await FirebaseAuth.instance.signOut();
                      //       setState(() {
                      //       });
                      //       Navigator.pushNamed(context, '/navbar');
                      //     })
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
