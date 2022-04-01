// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sushi_ui/model/cake_model.dart';
import 'package:sushi_ui/screens/detail_screen.dart';
import 'package:sushi_ui/screens/home_screen.dart';

Widget buildTitle(String title, double size, double height, Color color,
    bool center, int maxlines) {
  return Text(
    title,
    maxLines: maxlines,
    // overflow: TextOverflow.clip,
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
          Expanded(
              child: buildTitle('Get Started', 19, 1, Colors.white, true, 2))
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
      buildTabBtn('All', true, null),
      SizedBox(width: 20),
      buildTabBtn('Cakes', false, null),
      SizedBox(width: 20),
      buildTabBtn('Desserts', false, null),
    ],
  );
}

Widget buildTabBtn(String text, bool active, IconData? icon) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: active ? Colors.green : Colors.white),
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 0),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: active ? Colors.white : Colors.black),
          ),
          Icon(
            icon,
            color: Colors.white,
            size: 13,
          )
        ],
      )),
    ),
  );
}

// Widget buildCards() {
//   return Container(
//     height: 400,
//     width: 340,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(30),
//       color: Colors.grey,
//     ),
//     child: Stack(
//       children: [
//         Container(
//           height: 400,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(30),
//               image: DecorationImage(
//                   image: AssetImage('assets/images/ckake1.jpg'),
//                   fit: BoxFit.cover)),
//         ),
//         Positioned(
//           bottom: 20,
//           left: 10,
//           child: Container(
//             width: 300,
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 buildTitle(
//                     'Chocolate  Cup Cakes', 26, 1.3, Colors.white, false),
//                 SizedBox(height: 10),
//                 buildDescription('12 ingredients | 40 mins', 15)
//               ],
//             ),
//           ),
//         ),
//         Positioned(
//           right: 15,
//           top: 20,
//           child: Container(
//             padding: EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.brown.shade200.withOpacity(0.4),
//             ),
//             child: Icon(
//               FontAwesomeIcons.bookmark,
//               color: Colors.white,
//             ),
//           ),
//         )
//       ],
//     ),
//   );
// }

Widget buildCardss() {
  return SizedBox(
    height: 340,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cakes.length,
        itemBuilder: (context, int index) {
          Cake cake = cakes[index];
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(cake: cake))),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: 300,
              margin: EdgeInsets.only(right: 20),
              child: buildCard(cake),
            ),
          );
        }),
  );
}

Widget buildCard(Cake cake) {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('${cake.imgUrl}'), fit: BoxFit.fill),
        ),
      ),
      Positioned(
        bottom: 20,
        left: 20,
        right: 0,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitle('${cake.title}', 29, 1.3, Colors.white, false, 2),
              SizedBox(height: 10),
              buildDescription('${cake.description}', 16)
            ]),
      ),
    ],
  );
}
