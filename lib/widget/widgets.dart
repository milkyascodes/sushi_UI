// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sushi_ui/screens/home_screen.dart';

Widget buildTitle(
    String title, double size, double height, Color color, bool center) {
  return Text(
    title,
    textAlign: center ? TextAlign.center : TextAlign.left,
    style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w800,
        height: height,
        color: color),
  );
}

Widget buildDescription(String description, double size) {
  return Text(
    description,
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: size, fontWeight: FontWeight.w300, color: Colors.white),
  );
}

Widget buildFAB(context) {
  return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(230, double.infinity),
        primary: Colors.green,
        padding: EdgeInsets.all(8),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(100.0),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.green,
            ),
            backgroundColor: Colors.white,
            radius: 28,
          ),
          Expanded(child: buildTitle('Get Started', 19, 1, Colors.white, true))
        ],
      ));
}

Widget buildSearch() {
  return Row(
    children: [
      Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
              hintText: 'Search Dish',
            ),
          ),
        ),
      ),
      IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.sliders))
    ],
  );
}
