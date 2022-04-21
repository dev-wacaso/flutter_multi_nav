class Meal {
  final String id;
  final List<String>? categories;
  final String? title, imageUrl;
  final Affordability? affordability;
  final Complexity? complexity;
  final int? duration;
  final List<String>? ingredients, steps;
  final bool? isGlutenFree, isVegan, isVegetarian, isLactoseFree;

  const Meal(
      {required this.id,
      this.categories,
      this.title,
      this.imageUrl,
      this.affordability,
      this.complexity,
      this.duration,
      this.ingredients,
      this.steps,
      this.isGlutenFree,
      this.isVegan,
      this.isVegetarian,
      this.isLactoseFree});
}

enum Affordability { Affordable, Pricey, Luxurious }
enum Complexity { Simple, Hard, Challenging }
