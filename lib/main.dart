import 'package:flutter/material.dart';

import 'pages/listitem.dart';
import 'pages/add_drink.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => const ListItem(),
        '/list': (context) =>  ListItem(),
        '/add': (context) => const DrinkKinds(),
      },
    ),
  );
}
