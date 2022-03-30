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
              prefixIcon: Icon(Icons.search),
              hintText: 'Search Dish',
            ),
          ),
        ),
      ),
      IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.sliders))
    ],
  );
}

Widget buildTabs() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      buildTabBtn('All', true),
      SizedBox(width: 20),
      buildTabBtn('Cakes', false),
      SizedBox(width: 20),
      buildTabBtn('Desserts', false),
    ],
  );
}

Widget buildTabBtn(String text, bool active) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: active ? Colors.green : Colors.white),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            color: active ? Colors.white : Colors.black),
      )),
    ),
  );
}

Widget buildCards() {
  return Container(
    height: 400,
    width: 340,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.grey,
    ),
    child: Stack(
      children: [
        Container(
          height: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage('assets/images/ckake1.jpg'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTitle(
                    'Chocolate  Cup Cakes', 26, 1.3, Colors.white, false),
                SizedBox(height: 10),
                buildDescription('12 ingredients | 40 mins', 15)
              ],
            ),
          ),
        ),
        Positioned(
          right: 15,
          top: 20,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.brown.shade200.withOpacity(0.4),
            ),
            child: Icon(
              FontAwesomeIcons.bookmark,
              color: Colors.white,
            ),
          ),
        )
      ],
    ),
  );
}
