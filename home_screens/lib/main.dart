import 'package:flutter/material.dart';
import 'package:home_screens/bottom_navigation/bottom_nav.dart';

void main(List<String> args) {
  runApp(Myapp());
}
class Myapp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home() ,
    );
  }
}

Set<String> favourites = {};

bool isFavourite(String title) => favourites.contains(title);

void toggleFavourite(String title) => isFavourite(title) ? favourites.add(title) : favourites.remove(title);