class Recipe {
  final String name;
  final List<String> ingredients;
  final String instructions;
  final String? imageUrl;

  Recipe({
    required this.name,
    required this.ingredients,
    required this.instructions,
    this.imageUrl,
  });
}