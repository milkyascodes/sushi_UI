import 'package:flutter/material.dart';

Widget buildTitle(String title, double size) {
  return Text(
    title,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget buildDescription(String description, double size) {
  return Text(
    description,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: size, fontWeight: FontWeight.w200),
  );
}
