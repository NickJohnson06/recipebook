import 'package:flutter/material.dart';
import 'details_screen.dart';
import '../models/recipe.dart';

// Recipe list
final List<Recipe> favRecipes = [
  Recipe(
    name: 'Chicken Quesadilla',
    ingredients: ['Flour tortillas', 'Cooked chicken, shredded', 'Mont Jack Cheese', 'Salsa'],
    instructions:
        'Place chicken and cheese on a tortilla. Top with another tortilla. Cook in a skillet until cheese melts and tortilla is golden. Serve with salsa.',
  ),
  Recipe(
    name: 'Avocado Toast',
    ingredients: ['Bread slices', 'Ripe avocado', 'Lemon juice', 'Salt & pepper', 'Tomato, diced'],
    instructions:
        'Toast the bread slices. Mash avocado with lemon juice, salt, and pepper. Spread avocado on toast and top with diced tomatoes. Finsih it off by drizzling Balsamic Vinegarette across the top.',
  ),
  Recipe(
    name: 'Garlic Butter Shrimp',
    ingredients: ['Shrimp (peeled and deveined)', 'Butter', 'Garlic, minced', 'Lemon juice', 'Salt & pepper'],
    instructions:
        'Melt butter in a skillet over medium heat. Add garlic and sauté until fragrant. Add shrimp and cook 2–3 minutes per side until pink. Squeeze lemon juice over shrimp and season with salt and pepper.',
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Favorite Recipes'),
      centerTitle: true,
      ),
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