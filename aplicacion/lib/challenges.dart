import 'package:flutter/material.dart';

class challenges extends StatefulWidget {
  challenges({Key? key}) : super(key: key);

  @override
  _challengesState createState() => _challengesState();
}

class _challengesState extends State<challenges> {
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
        ),
      ),
    );
  }
}
