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
      resizeToAvoidBottomInset : false,
      backgroundColor: const Color.fromARGB(255, 88, 89, 91),

      // appBar: AppBar(
      //     title: Text('User is (Logged ' + (user == null ? 'out' : 'in') + ')'),
      // ),

      body: Container(
        margin: EdgeInsets.fromLTRB(30, 25, 30, 20),

        child: Stack(
          children: <Widget>[
            Image.asset('assets/images/logo3.png'),

            Column(
                children:<Widget>[
                  SizedBox(height: 200),

                  Container(
                    child: Align(
                      child: Text("Create an account",
                          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 30, fontFamily: "Martel",fontWeight: FontWeight.bold,),
                          textAlign: TextAlign.left),
                    ),
                  ),

                ]),
            Column(
              children: <Widget>[

                SizedBox(height: 300),

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

                SizedBox(height: 50),

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





                SizedBox(height: 110),

                Row(
                    children: [

                      ElevatedButton(
                          child: Text('Sign Up',
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
                            await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text
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
