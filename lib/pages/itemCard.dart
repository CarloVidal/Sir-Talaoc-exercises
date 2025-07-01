// itemCard.dart
import 'package:flutter/material.dart';
import 'Drink.dart'; // Ensure this import is correct

class ItemCard extends StatelessWidget {
  final DrinkKinds drinkKinds;  // Corrected the name

  const ItemCard({super.key, required this.drinkKinds});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF7C9082),
      child: Padding( // Padding added for spacing
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Ensures better alignment
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjusted layout
              children: [
                Text(
                  drinkKinds.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16, // Added fontSize for better readability
                  ),
                ),
                Text(
                  drinkKinds.brand,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14, // Slightly smaller text for brand
                  ),
                ),
              ],
            ),
            SizedBox(height: 8), // Added some space between the texts
            Text(
              drinkKinds.percentage.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 14, // Added fontSize for better readability
              ),
            ),
          ],
        ),
      ),
    );
  }
}
