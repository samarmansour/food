import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_screens/main.dart';


class Dishes_breakfast extends StatefulWidget {
  String title;
  String image;
  Widget distination;
   Dishes_breakfast({
    Key key,
    this.distination,this.image,this.title
  }) : super(key: key);

  @override
  _Dishes_breakfastState createState() => _Dishes_breakfastState();
}

class _Dishes_breakfastState extends State<Dishes_breakfast> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

         Navigator.push(context,
                MaterialPageRoute(builder: (context)=> widget.distination)
                );
           
      },
   child:  Container(
           child: Row(children:[
              Padding(
                padding: const EdgeInsets.only(left: 20,bottom: 20),
                child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 0.5,
                    ),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(widget.image)),
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
               padding: const EdgeInsets.only(top: 1,bottom: 20,right: 6),
               child: Container(
                child: Text(
                 widget.title,
                  style:GoogleFonts.sansita(textStyle:TextStyle(
                        
                          fontSize: 22,
                           color: Color(0xff1222AC),
                          fontWeight: FontWeight.w500),  ),
                  
                ),
            ),
             ),
             Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 18,top: 1,left: 4),
                child: IconButton(
      icon: Icon(isFavourite(widget.title) ? Icons.favorite_border : Icons.favorite),
      onPressed: () {
        toggleFavourite(widget.title);
        setState(() {});
      },
    ),
              ),

           ]),
         )
    );
  }
}
/*
LikeButton(
         isLiked: isFavourite(widget.title),
          circleColor:
                CircleColor(start: Color(0xEF1414), end:  Color(0xF43300)),
          bubblesColor: BubblesColor(
            dotPrimaryColor: Color(0xFEFCFC),
            dotSecondaryColor: Color(0xFEFCFC),
          ),
          likeBuilder: (bool isLiked) {
            return Icon(
                Icons.favorite,
                color: isLiked ? Colors.red : Colors.grey,
                size:20,
            );
          },
          onTap: (isLiked) async {
            toggleFavourite(widget.title);
            setState(() {});
            return (!isLiked);
          },
         
        )
*/