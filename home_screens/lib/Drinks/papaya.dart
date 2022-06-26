
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_screens/Drinks/drink.dart';




class Papaya extends StatefulWidget {
  

  @override
  Methi createState() => Methi(); 
  
}

class Methi extends State<Papaya> {
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
                  context, MaterialPageRoute(builder: (context) => Drink()));
            }),
      ),
      body: ListView(
        children: [
          Container(
            child:Row(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 10,left:50,bottom: 10),
                 child: Container(
              child: Text(
                  "Papaya and Almond Smoothie ",
                  style: TextStyle(
                      fontSize: 20,
                      color:Color(0xff1222AC),
                      fontWeight: FontWeight.bold),
                  
              ),
            ),
          
               ),
                       
            ],)
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
                      fit: BoxFit.cover, image: AssetImage('images/pic37.jpg')),
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
         Text(
                  "   Ingredient: ",
                  style: TextStyle(
                    height: 1.5,
                      fontSize: 22,
                      color:Color(0xff1222AC),
                      fontWeight: FontWeight.bold),
                  
              ),
               Padding(
                 padding: const EdgeInsets.only(left: 20 ,bottom: 10),
                 child: Text("1 cup nonfat plain or vanilla yogurt\n1 cup chopped papaya\n⅓ cup fresh or frozen chopped strawberries\n1 cup skim or 1 percent milk\n1 teaspoon vanilla\n2 tablespoons honey or agave nectar (optional)\n2 tablespoons slivered almonds\n2 tablespoons chopped almonds (optional)",

                    style: TextStyle(
                        fontSize: 18,
                        color:Color(0xff313986),
                        fontWeight: FontWeight.w400),
                    
              ),
               ),
               Text(
                  "   Method ",
                  style: TextStyle(
                      fontSize: 22,
                      color:Color(0xff1222AC),
                      fontWeight: FontWeight.bold),
                  
              ),
              Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Text(
                    " Combine the yogurt, papaya, strawberries, milk,vanilla, honey, andalmonds in a blender and mix well. Sprinkle chopped almonds on eachserving, if desired. You can use peaches or melon if you don’t have papaya on hand for thissmoothie. You can also use whole almonds instead of slivered almonds—just blend them a little longer. Almonds give smoothies a delicious tasteand are very nutritious",
                    

                    style: TextStyle(
                       height: 1.5,
                        fontSize: 18,
                        color:Color(0xff313986),
                        fontWeight: FontWeight.w400),
                    
              ), 
               ),
              Text(
                  "   Benefit: ",
                  style: TextStyle(
                      fontSize: 22,
                       height: 1.5,
                      color:Color(0xff1222AC),
                      fontWeight: FontWeight.bold),
                  
              ),
               Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Text(
                    "Calories 126\nFat 2.2 g\nSugars 19 g\nProtein 6 g\nSodium 68 mg",
                    

                    style: TextStyle(
                      height: 1.5,
                        fontSize: 18,
                        color:Color(0xff313986),
                        fontWeight: FontWeight.w400),
                    
              ),
               )
        ],
      ),
    );
    
  }
}