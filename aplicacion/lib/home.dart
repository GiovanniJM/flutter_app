// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, unused_local_variable

import 'package:aplicacion/challenges.dart';
import 'package:aplicacion/imitation_main.dart';
import 'package:aplicacion/questions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

Widget _buildButton1(Type buildContext, BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 12),
    width: double.infinity,
    child: ElevatedButton(
        child: Text(
          'Preguntas',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            primary: Color(0xffA1A1A4),
            onPrimary: Color(0xff280071),
            elevation: 5,
            padding: EdgeInsets.symmetric(vertical: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
        onPressed: () {
          final route = MaterialPageRoute(builder: (context) => questions());
          Navigator.push(context, route);
        }),
  );
}

Widget _buildButton2(Type buildContext, context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 12),
    width: double.infinity,
    child: ElevatedButton(
        child: Text(
          'Retos',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            primary: Color(0xffA1A1A4),
            onPrimary: Color(0xff280071),
            elevation: 5,
            padding: EdgeInsets.symmetric(vertical: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
        onPressed: () {
          final route = MaterialPageRoute(builder: (context) => challenges());
          Navigator.push(context, route);
        }),
  );
}

Widget _buildButton3(Type buildContext, BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 12),
    width: double.infinity,
    child: ElevatedButton(
        child: Text(
          'Imitacion',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            primary: Color(0xffA1A1A4),
            onPrimary: Color(0xff280071),
            elevation: 5,
            padding: EdgeInsets.symmetric(vertical: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
        onPressed: () {
          final route =
              MaterialPageRoute(builder: (context) => imitation_main());
          Navigator.push(context, route);
        }),
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xff00788C),
                Color(0xff280071),
              ])),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /*CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Colors.transparent,
                      child: Image(
                        image: AssetImage('assets/images/liga.png'),
                        height: 300.0,
                      )),*/
                  _buildButton1(BuildContext, context),
                  _buildButton2(BuildContext, context),
                  _buildButton3(BuildContext, context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
