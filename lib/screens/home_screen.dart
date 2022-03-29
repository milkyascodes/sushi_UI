// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sushi_ui/widget/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          color: Color.fromARGB(255, 228, 233, 235),
          child: Column(
            children: [
              SizedBox(
                child: buildTitle('Find Best Reciepe For Cooking', 25, 1.4,
                    Colors.black, false),
              ),
              SizedBox(
                height: 30,
              ),
              buildSearch(),
            ],
          ),
        ),
      ),
    );
  }
}
