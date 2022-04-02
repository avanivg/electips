import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 214, 203),





      appBar: AppBar(

      ),
      body: Center(

            child: Container(
              child: ElevatedButton(

                child: new Text("Delete",
                  style: TextStyle(color: Colors.white, fontSize: 22, fontFamily: "Quicksand"),
                  textAlign: TextAlign.left,

                ),
                //DELETE HERE!!!!
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');

                },
              ),
            ),


      ),

    );
  }
}

