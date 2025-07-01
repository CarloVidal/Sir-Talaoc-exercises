import 'package:flutter/material.dart';

import 'Drink.dart';

class Listitem extends StatefulWidget {
  const Listitem({super.key});

  @override
  State<Listitem> createState() => _ListitemState();
}

class _ListitemState extends State<Listitem> {
  List<Coffee> coffee =[
    Coffee(name: 'Fundador Light', brand: 'Fundador', percentage: 22 ),
    Coffee(name: 'Gin bilog', brand: 'Ginebra San MIguel', percentage: 69),
    Coffee(name: 'Red Wine', brand: 'Wine', percentage: 50),
    Coffee(name: 'Kwatro kantos', brand: 'Ginebra San Miguel', percentage: 67),
    Coffee(name: 'GSM', brand: 'Ginebra San Miguel', percentage: 89),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('DrinkKinds')
      ),
      body: Column(
        children: Drink.map((drink){
          return Text(drink.name);
        }).toList(),
      ),
    );

  }
}