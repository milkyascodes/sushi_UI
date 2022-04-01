// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:sushi_ui/widget/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 239, 240),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        color: Color.fromARGB(255, 235, 239, 240),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60),
              buildTitle('Find Best Reciepe For Cooking', 25, 1.4, Colors.black,
                  false, 2),
              SizedBox(height: 30),
              buildSearch(),
              SizedBox(height: 25),
              buildTabs(),
              SizedBox(height: 25),
              buildCardss(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        // currentIndex: _currentTab,
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: Colors.black,
        // onTap: (i) => setState(() {}),
        items: [
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.house),
            title: Text(""),
            // selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.solidBookmark),
            title: Text(" Saved"),
            // selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.bagShopping),
            title: Text(" Shop"),
            // selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.userLarge),
            title: Text(" Profile"),
            // selectedColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
