// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget buildTitle(String title, double size, double height) {
  return Text(title,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.w800,
          height: height,
          color: Colors.white));
}

Widget buildDescription(String description, double size) {
  return Text(
    description,
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: size, fontWeight: FontWeight.w300, color: Colors.white),
  );
}

Widget buildFAB() {
  return ElevatedButton(
      onPressed: () {},
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
          Expanded(child: buildTitle('Get Started', 19, 1))
        ],
      ));
}
