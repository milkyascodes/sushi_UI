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
      debugShowCheckedModeBanner: false,
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
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              // Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 0, 0, 0)
            ],
          )),
          child: Stack(
            children: [
              Positioned(
                  // top: 0,
                  // left: 0,
                  // right: 0,
                  child: Image(
                height: double.infinity,
                colorBlendMode: BlendMode.exclusion,
                image: AssetImage('assets/images/cake2.jpg'),
                fit: BoxFit.cover,
                // alignment: Alignment.topCenter,
              )),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                      // color: Colors.green,
                      // width: 300,
                      child: Column(
                        children: [
                          buildTitle('Baking Experience Like a Chef', 28, 1.4),
                          SizedBox(height: 20),
                          buildDescription(
                              'Let\'s make a delious dish with the best reciepe for the family',
                              17),
                          SizedBox(height: 40),
                          buildFAB(),
                          SizedBox(height: 20),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
