import 'package:flutter/material.dart';
import 'package:food_recipe/screens/sheets/components/detailedrecipe.dart';

class RecipeBundle {
  final int id, chefs, recipes;
  final String title, description, imageSrc;
  final Color color;
  final Widget destination;

  RecipeBundle({
    required this.id,
    required this.chefs,
    required this.recipes,
    required this.title,
    required this.description,
    required this.imageSrc,
    required this.color,
    required this.destination,
  });
}

List<RecipeBundle> recipeBundles = [
  RecipeBundle(
      id: 1,
      chefs: 10,
      recipes: 43,
      title: "The Best In Town",
      description: "What's your favorite food dish make it now",
      imageSrc: "assets/images/egg.png",
      color: const Color(0xFFff9f1c),
      destination: const RecipeScreen()),
  RecipeBundle(
      id: 2,
      chefs: 8,
      recipes: 26,
      title: "Best Of 2022",
      description: "Cook recipes for special occasions",
      imageSrc: "assets/images/non_veg.png",
      color: const Color(0xFF90AF17),
      destination: const RecipeScreen()),
  RecipeBundle(
      id: 3,
      chefs: 5,
      recipes: 12,
      title: "Healthy Food",
      description: "Eat healthy, live long, live strong",
      imageSrc: "assets/images/salad.png",
      color: const Color(0xFF0081a7),
      destination: const RecipeScreen()),
  RecipeBundle(
      id: 4,
      chefs: 15,
      recipes: 23,
      title: "Cook Something New Everyday",
      description: "New and tasty recipes every minute",
      imageSrc: "assets/images/meat.png",
      color: const Color(0xFF577399),
      destination: const RecipeScreen()),
  RecipeBundle(
      id: 5,
      chefs: 16,
      recipes: 95,
      title: "Food Court",
      description: "Welcome you with your favourite delicacies",
      imageSrc: "assets/images/world.png",
      color: const Color(0xFFD82D40),
      destination: const RecipeScreen()),
];
