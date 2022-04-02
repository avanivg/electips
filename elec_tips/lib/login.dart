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
      backgroundColor: const Color.fromARGB(255, 232, 214, 203),
      appBar: AppBar(
          title: Text('User is (Logged ' + (user == null ? 'out' : 'in') + ')'),
      ),
      body: Center(
            child: Column(
              children: [
                TextField(controller: emailController),
                TextField(controller: passwordController),
                Row(
                  children: [
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ElevatedButton(child: Text('Sign Up'),
                        onPressed: () async {
                          await Firebase.initializeApp();
                          await FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text
                          );
                          setState(() {
                          });
                        }),
                    ElevatedButton(child: Text('Sign In'),
                        onPressed: () async {
                          await FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text,
                          );
                          setState(() {
                          });
                        }),
                    ElevatedButton(child: Text('Log out'),
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                        setState(() {
                        });
                      })
                  ]

                )
              ],
            ),

     ),

    );
  }
}

