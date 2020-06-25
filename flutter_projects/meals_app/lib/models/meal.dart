import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  @required
  final String id;
  @required
  final List<String> categories;
  @required
  final String title;
  @required
  final String imageUrl;
  @required
  final List<String> ingredients;
  @required
  final List<String> steps;
  @required
  final int duration;
  @required
  final Complexity complexity;
  @required
  final Affordability affordability;
  @required
  final bool isGlutenFree;
  @required
  final bool isLactoseFree;
  @required
  final bool isVegan;
  @required
  final bool isVegetarian;

  const Meal(
      {this.id,
      this.categories,
      this.title,
      this.imageUrl,
      this.ingredients,
      this.steps,
      this.duration,
      this.complexity,
      this.affordability,
      this.isGlutenFree,
      this.isLactoseFree,
      this.isVegan,
      this.isVegetarian});
}
