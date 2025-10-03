import 'package:flutter/material.dart';
import 'details_screen.dart';
import '../models/recipe.dart';

// Recipe list
final List<Recipe> favRecipes = [
  Recipe(
    name: 'Example 1',
    ingredients: ['A', 'B', 'C', 'D', 'E'],
    instructions: 'Example instructions here',
  ),
  Recipe(
    name: 'Example 2',
    ingredients: ['F', 'G', 'H', 'I', 'J'],
    instructions: 'Example instructions here',
  ),
  Recipe(
    name: 'Example 3',
    ingredients: ['K', 'L', 'M', 'N'],
    instructions: 'Example instructions here',
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Favorite Recipes')),
      body: ListView.builder(
        itemCount: favRecipes.length,
        itemBuilder: (context, index) {
          final recipe = favRecipes[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: ListTile(
              title: Text(recipe.name),
              subtitle: Text(recipe.ingredients.join(', ')),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}