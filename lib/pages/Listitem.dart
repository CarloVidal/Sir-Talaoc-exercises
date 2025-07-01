import 'package:flutter/material.dart';
import 'Drink.dart'; // Ensure the DrinkKinds class is properly defined
import 'itemCard.dart'; // Import ItemCard correctly

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  List<DrinkKinds> drinkKinds = [
    DrinkKinds(name: 'Fundador Light', brand: 'Fundador', percentage: 22),
    DrinkKinds(name: 'Gin Bilog', brand: 'Ginebra San Miguel', percentage: 69),
    DrinkKinds(name: 'Red Wine', brand: 'Wine', percentage: 50),
    DrinkKinds(name: 'Kwatro Kantos', brand: 'Ginebra San Miguel', percentage: 67),
    DrinkKinds(name: 'GSM', brand: 'Ginebra San Miguel', percentage: 89),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DrinkKinds'),
      ),
      body: ListView(
        children: drinkKinds.map((drink) {
          return ItemCard(drinkKinds: drink); // Use ItemCard widget here
        }).toList(),
      ),
    );
  }
}
