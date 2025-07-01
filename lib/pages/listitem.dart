import 'package:flutter/material.dart';
import 'package:recipeapp/pages/drink.dart';
import 'package:recipeapp/pages/item_card.dart';
import 'package:untitled/pages/add_drink.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {

  List<Drinkkinds> drink = [
    Drinkkinds(
      name: 'Pasta',
      brand: 'Delicious pasta with tomato sauce',
      percentage: '300',
    ),
    Drinkkinds(
      name: 'Salad',
      brand: 'Fresh salad with mixed greens',
      percentage: '150',
    ),
    Drinkkinds(
      name: 'Pizza',
      brand: 'Cheesy pizza with pepperoni',
      percentage: '400',
    ),
    Drink(
      name: 'Burger',
      brand: 'Juicy burger with lettuce and tomato',
      percentage: '500',
    ),
    Drinkkinds(
      name: 'Sushi',
      brand: 'Sushi rolls with fresh fish',
      percentage: '250',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List items'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: GridView.count(
          crossAxisCount: 2, // 2 columns
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: recipes.map((recipe) => Itemcard(recipe: recipe)).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}