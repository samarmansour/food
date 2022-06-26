import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_screens/lunch/cajun_salmon.dart';
import 'package:home_screens/lunch/courgette.dart';
import 'package:home_screens/lunch/fruity_moroc.dart';
import 'package:home_screens/lunch/easy_beef.dart';

import 'package:home_screens/lunch/chickpea.dart';
import 'package:home_screens/category_food/food.dart';

import 'package:home_screens/shared/dishes_breakfast.dart';

class Lunch extends StatefulWidget {
  

  @override
  _LunchState createState() => _LunchState();
}

class _LunchState extends State<Lunch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Food",style: GoogleFonts.sansita(textStyle:TextStyle(
                        
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
                      fit: BoxFit.cover, image: AssetImage('images/pic25.jpg')),
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
              child:Text("  Lunch",style: GoogleFonts.sansita(textStyle:TextStyle(
                        
                          fontSize: 40,
                           color: Color(0xff1222AC),
                          fontWeight: FontWeight.w500),  ),
                 ),
            ),
          ),
       
       Dishes_breakfast (title: '  Chickpea and bean\n            casserole',image: 'images/pic18.jpg',distination:  Chickpea(),),
       Dishes_breakfast (title: '  Fruity Moroccan \n chicken traybake',image: 'images/pic19.jpg',distination: Fruity_moro(),),
       Dishes_breakfast (title: '  Easy beef casserol',image: 'images/pic20.jpg',distination: Eeasy_beef(),),
       Dishes_breakfast (title: ' Cajun salmon',image: 'images/pic21.jpg',distination: Cajon_salmon(),),
       Dishes_breakfast (title: '   Courgette and\n ratatouille with fish',image: 'images/pic22.jpg',distination: Courgette(),),
        ],
      ),
    );
  }
}