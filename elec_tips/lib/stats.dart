import 'package:flutter/material.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 233, 196),
      body: Center(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'Here are your efficiency stats: ',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  //current location
                  margin: const EdgeInsets.only(right: 50, left: 50),
                  padding: const EdgeInsets.all(15),
                  alignment: const Alignment(2.0, 3.0),
                  child: TextField(
                    enabled: true,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 254, 246, 215),
                        hintText: 'Trip name'),
                  ),
                ),
                /*Container(
                margin: const EdgeInsets.only(right: 50, left: 50),
                padding: const EdgeInsets.all(15),
                  alignment: Alignment( 0.0, 4.0),
                child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        //contentPadding: const EdgeInsets.symmetric(horizontal: 40.0),
                      isDense: true,
                        isCollapsed: true,
                        contentPadding: EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 254, 246, 215),
                        hintText: "Choose location"),
                  enabled: true,
                ),
                ),*/
                Container(
                  margin: const EdgeInsets.only(right: 50, left: 50),
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment(0.0, 5.0),
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 254, 246, 215),
                        hintText: "Trip distance in miles"),
                    enabled: true,
                  ),
                ),
                ElevatedButton(
                    child: Text('Calculate Stats'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/stats');
                      setState(() {});
                    }),
              ],
            ),
            /*
            TextField(

              maxLines: 1,
              decoration: InputDecoration(
                //contentPadding: EdgeInsets.all(15.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 254, 246, 215),
                  hintText: "Ideal Speed"),
            ),
            Column( //ideal speed
                  children:/* <Widget>*/[
                   // const SizedBox(height: 10),
                    Row (
                     children: /*<Widget>*/[/*
                     Container(
                        margin: const EdgeInsets.only(right: 50, left: 50),
                        padding: const EdgeInsets.all(15),
                        alignment: Alignment( 0.0, 5.0),*/
                        TextField(

                            maxLines: 1,
                            decoration: InputDecoration(
                            //contentPadding: EdgeInsets.all(15.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 254, 246, 215),
                            hintText: "Ideal Speed"),
    ),
                      //  ),

                     ],
                    ),
                    Row(
                      //add second row with returned data value here
                    )
                    ],
              ),*/
          ],
        ),
      ),
    );
  }
}
