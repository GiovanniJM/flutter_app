import 'package:aplicacion/challenges.dart';
import 'package:aplicacion/home.dart';
import 'package:aplicacion/questions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'Home',
      routes: <String, WidgetBuilder>{
        'Home': (BuildContext context) => HomePage(),
        'Login': (BuildContext context) => questions(),
        'Create': (BuildContext context) => challenges(),
      },
    );
  }
}
