import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Recipe> favRecipes = [
    Recipe(
      name: '',
      ingredients: [],
      instructions: '',
    ),
    Recipe(
      name: '',
      ingredients: [],
      instructions: '',
    ),
    Recipe(
      name: '',
      ingredients: [],
      instructions: '',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Favorite Recipes')),
      body: ListView.builder(
        itemCount: favRecipes.length,
        itemBuilder: (context, index) {
          final recipe = favRecipes[index];
          return ListTile(
            title: Text(recipe.name),
            subtitle: Text(recipe.ingredients.join(', ')),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
            },
          );
        },
      ),
    );
  }
}