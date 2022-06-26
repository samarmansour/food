import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_screens/Drinks/beet.dart';
import 'package:home_screens/Drinks/green_juice.dart';
import 'package:home_screens/Drinks/papaya.dart';
import 'package:home_screens/Drinks/peach.dart';
import 'package:home_screens/Drinks/warm.dart';

import 'package:home_screens/category_food/food.dart';
import 'package:home_screens/shared/dishes_breakfast.dart';

class Drink extends StatefulWidget {
  @override
  _DrinkState createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Food",
          style: GoogleFonts.sansita(
            textStyle: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff1222AC),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            iconSize: 20,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Food()));
            }),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: 20,
            height: 10,
          ),
          Center(
            child: Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 0.5,
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('images/pic32.jpg')),
                  color: Color(0xff1222AC),
                  borderRadius: BorderRadius.circular(70),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0))
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 115, top: 5),
            child: Container(
              child: Text(
                " Drinks",
                style: GoogleFonts.sansita(
                  textStyle: TextStyle(
                      fontSize: 40,
                      color: Color(0xff1222AC),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Dishes_breakfast(
            title: '  Warm winter punch',
            image: 'images/pic33.jpg',
            distination: Warm(),
          ),
          Dishes_breakfast(
            title: '  Green Juice',
            image: 'images/pic34.jpg',
            distination: Green_juice(),
          ),
          Dishes_breakfast(
            title: '  peach Yogurt Smooth',
            image: 'images/pic35.jpg',
            distination: Peach_yogurt(),
          ),
          Dishes_breakfast(
            title: '  Beet Juice',
            image: 'images/pic36.jpg',
            distination: Beet(),
          ),
          Dishes_breakfast(
            title: '  Papaya and Almond \n  Smoothie',
            image: 'images/pic37.jpg',
            distination: Papaya(),
          ),
        ],
      ),
    );
  }
}
