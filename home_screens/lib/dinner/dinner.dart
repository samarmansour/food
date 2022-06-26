import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_screens/dinner/Turkey.dart';
import 'package:home_screens/dinner/baked_leak.dart';
import 'package:home_screens/dinner/chestnut.dart';
import 'package:home_screens/dinner/cottage.dart';
import 'package:home_screens/dinner/pizza.dart';

import 'package:home_screens/category_food/food.dart';
import 'package:home_screens/shared/dishes_breakfast.dart';

class Dinner extends StatefulWidget {
  

  @override
  _DinnerState createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text("Food",style: GoogleFonts.sansita(textStyle:TextStyle(
                        
                          fontSize: 40,
                           color:Colors.white,
                          fontWeight: FontWeight.w500),  ),
                 ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff1222AC),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            iconSize: 20,
            onPressed: () {
               Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Food())
                    );
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
                      fit: BoxFit.cover, image: AssetImage('images/pic31.jpg')),
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
            padding: const EdgeInsets.only(left: 115,  top: 5),
            child: Container(
              child:Text(" Dinner",style: GoogleFonts.sansita(textStyle:TextStyle(
                        
                          fontSize: 40,
                           color: Color(0xff1222AC),
                          fontWeight: FontWeight.w500),  ),
                 ),
            ),
          ),
       
       Dishes_breakfast (title: '  Baked leek crumble',image: 'images/pic26.jpg',distination:  Backed_leak(),),
       Dishes_breakfast (title: '  Chestnut loaf',image: 'images/pic27.jpg',distination: Chestnut(),),
       Dishes_breakfast (title: '  Cottage Cheese Toast',image: 'images/pic28.jpg',distination: Cottage(),),
       Dishes_breakfast (title: '  Turkey, Spinache \n   and Apple Warp',image: 'images/pic29.jpg',distination: Turkey(),),
       Dishes_breakfast (title: '  Tortilla pizza',image: 'images/pic30.jpg',distination: Pizza(),),
        ],
      ),
    );
  }
}