import 'package:flutter/material.dart';
import 'package:untitled/pages/drink.dart';
import 'package:untitled/pages/Item_card.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  List<Recipe> drink = [
    Recipe(
      name: 'FUNDADOR LIGHT',
      brand: 'FUNDADOR',
      percentage: 40,
    ),
    Recipe(
      name: 'GSM BLUE',
      brand: 'GINEBRA',
      percentage: 30,
    ),
    Recipe(
      name: 'ALFONSO LIGHT',
      brand: 'ALFONSO',
      percentage: 25,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DRINK KINDS',
          style: TextStyle(
            fontWeight: FontWeight.bold, // ✅ Bold text
            fontSize: 20,                // Optional: slightly larger
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red, // ✅ Red AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: drink
              .map((drinkItem) => ItemCard(drink: drinkItem))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
