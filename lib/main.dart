import 'package:flutter/material.dart';
import 'pages/listitem.dart';
import 'pages/add_drink.dart';
import 'Worldtime/home.dart';
import 'Worldtime/choose_location.dart';
void main() {
  runApp(
    MaterialApp(
      routes: {       
        '/home': (context) => Home(),
        '/list': (context) =>  ListItem(),
        '/add': (context) => const DrinkKinds(),
        
       //world time routes
        '/choose_location':(context) =>ChooseLocation(),
      
      },
    ),
  );
}
