// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sushi_ui/model/ingredients_model.dart';
import 'package:sushi_ui/widget/widgets.dart';

class DetailScreen extends StatelessWidget {
  var cake;
  DetailScreen({Key? key, required this.cake}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 239, 240),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                  splashRadius: 20,
                ),
                buildTitle('${cake.title}', 20, 1, Colors.black, true, 1),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz),
                  splashRadius: 20,
                ),
              ],
            ),
            SizedBox(height: 20),
            Hero(
              tag: cake,
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('${cake.imgUrl}'),
                    )),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.brown.shade200.withOpacity(1),
                    ),
                    child: Icon(
                      FontAwesomeIcons.play,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Ingridients (${cake.ingredients.length})',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  buildTabBtn('1 Serving ', true, FontAwesomeIcons.angleDown)
                ],
              ),
            ),
            SizedBox(height: 20),
            buildIngredientList(cake),
          ],
        ),
      ),
    );
  }
}
