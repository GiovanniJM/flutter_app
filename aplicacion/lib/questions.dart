import 'package:flutter/material.dart';

class questions extends StatefulWidget {
  questions({Key? key}) : super(key: key);

  @override
  _questionsState createState() => _questionsState();
}

class _questionsState extends State<questions> {
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
