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

      backgroundColor: const Color.fromARGB(255, 88, 89, 91),

      // appBar: AppBar(
      //     title: Text('User is (Logged ' + (user == null ? 'out' : 'in') + ')'),
      // ),

      body: Container(
        margin: EdgeInsets.fromLTRB(30, 30, 30, 0),

        child: Stack(
          children: <Widget>[
            Column(
                children:<Widget>[


                  Image.asset('assets/images/logo3.png'),

                  Container(
                    child: Align(
                    child: Text("Welcome back!",
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 30, fontFamily: "Martel", fontWeight: FontWeight.bold, ),
                        textAlign: TextAlign.left ),


                  ),


                    height: 100,
                  //   decoration: new BoxDecoration(
                  //     shape: BoxShape.rectangle,
                  //     color: Colors.black,
                  //     borderRadius: BorderRadius.all(Radius.circular(20.0),
                  //
                  //
                  //   ),
                  //
                  //
                  // )
                  ),



                ]),
            Column(
              children: <Widget>[

                SizedBox(height: 320),

                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Username:",
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 24, fontFamily: "Martel"),
                        textAlign: TextAlign.left),
                  ),
                ),

                SizedBox(height: 10),

                TextField(controller: emailController,
                  style: TextStyle(height: 0.75,
                      fontFamily: "Martel"
                  ),
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    isDense: true,
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    filled: true,

                  ),
                ),

                SizedBox(height: 30),

                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Password:",
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 24, fontFamily: "Martel"),
                        textAlign: TextAlign.left),
                  ),
                ),

                SizedBox(height: 10),

                TextField(controller: passwordController,
                  style: TextStyle(height: 0.75),
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
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

                      Text("New? ", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontFamily: "Martel")),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignupPage())
                          );

                        },
                        child:  Text("Create account",
                          style: TextStyle(decoration: TextDecoration.underline, fontFamily: "Martel", color: Color.fromARGB(255, 255, 255, 255),

                          ),
                        ),

                      ),







                    ]
                ),

                SizedBox(height: 80),

                Row(
                    children: [
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ElevatedButton(
                          child: Text('Log in',
                          style: TextStyle(fontFamily: "Martel" ,color: Color.fromARGB(255, 255, 255, 255), fontSize: 20, fontWeight: FontWeight.bold )),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            primary: const Color.fromARGB(255, 176, 7, 21),
                            fixedSize: const Size(330, 50),
                          ),
                          onPressed: () async {
                            Navigator.pushNamed(context, '/navbar');
                            await Firebase.initializeApp();
                            await FirebaseAuth.instance.signInWithEmailAndPassword(
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
