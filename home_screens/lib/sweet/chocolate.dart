
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:home_screens/sweet/sweet.dart';


class Chocolate extends StatefulWidget {
  

  @override
  Methi createState() => Methi(); 
  
}

class Methi extends State<Chocolate> {
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
                  context, MaterialPageRoute(builder: (context) => Sweet()));
            }),
      ),
      body: ListView(
        children: [
          Container(
            child:Row(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 10,left:70,bottom: 10),
                 child: Container(
              child: Text(
                  "Chocolate and orange \n  frozen yoghurt bar ",
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
                      fit: BoxFit.cover, image: AssetImage('images/pic39.jpg')),
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
                 child: Text("Light-flavoured oil, for greasing\n500g fat-free Greek yoghurt\n35g chopped hazelnuts\n60g dried fruits, such as cranberries or dates, diced\n1 large orange, zest and half the juice\n5g dark chocolate, grated",

                    style: TextStyle(
                      height: 1.5,
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
                    " Grease a 30cm x 20cm baking tray with oil and line with two layers ofcling film. Set aside until needed. Spoon the yoghurt into a bowl. Then add about 30g of hazelnuts, 30g ofdried fruit and the orange juice and zest; and mix thoroughly. Pour intothe baking tray and shake gently from side-to-side to level. Sprinkle the remaining hazelnuts and dried fruit, and the grated chocolateover the yoghurt mix. Gently press into the surface using a clean palateknife or the back of a spoon. Place in the freezer, ensuring the baking tray is level, and leave for atleast two hours.",
                    

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
                    "CALORIES: 127\nFAT: 4g\nSALT: 0.2g\nSUGAR: 11g",
                    

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