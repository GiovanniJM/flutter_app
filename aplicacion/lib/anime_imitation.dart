import 'dart:math';

import 'package:flutter/material.dart';

class anime_imitation extends StatefulWidget {
  anime_imitation({Key? key}) : super(key: key);
  @override
  _anime_imitationState createState() => _anime_imitationState();
}

@override
dynamic listImagesnotFound = [
  "assets/anime/araujo.jpg",
  "assets/anime/nobita.jpg",
  "assets/anime/santaolalla.jpg",
  "assets/anime/zantgod.jpg",
  "assets/anime/toure.jpg",
  "assets/anime/mmm.jpg",
  "assets/anime/kaka.jpg",
  "assets/anime/spawn.jpg",
  "assets/anime/coscu.jpg",
  "assets/anime/bts.jpg",
  "assets/anime/manolo.jpg",
  "assets/anime/ayose.jpg",
  "assets/anime/calotuti.jpg",
  "assets/anime/heidi.jpg",
  "assets/anime/drill.jpg",
];

Widget buildImage(BuildContext context) {
  Random rnd;
  int min = 0;
  int max = listImagesnotFound.length - 1;
  rnd = new Random();
  int r = min + rnd.nextInt(max - min);
  String image_name = listImagesnotFound[r].toString();
  return Image.asset(image_name);
}

class _anime_imitationState extends State<anime_imitation> {
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
                  buildImage(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
