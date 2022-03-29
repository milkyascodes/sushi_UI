// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'widget/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
              color: Colors.green,
              // width: 300,
              child: Column(
                children: [
                  buildTitle('Baking Experience Like a Chef', 26),
                  SizedBox(height: 20),
                  buildDescription(
                      'Let\'s make a delious dish with the best reciepe for the family',
                      17)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
