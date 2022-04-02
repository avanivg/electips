import 'package:flutter/material.dart';

class EfficiencyPage extends StatefulWidget {
  const EfficiencyPage({Key? key}) : super(key: key);

  @override
  _EfficiencyPageState createState() => _EfficiencyPageState();
}

class _EfficiencyPageState extends State<EfficiencyPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(

        child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),

            ]),
      ),

    );
  }
}

