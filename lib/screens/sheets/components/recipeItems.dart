class RecipeItems {
  final String title, image;
  final int time;

  RecipeItems({
    required this.title,
    required this.time,
    required this.image,
  });
}

List<RecipeItems> recipeItems = [
  RecipeItems(
    title: "Masala Oats",
    time: 20,
    image: "assets/images/oats.jpg",
  ),
  RecipeItems(
    title: "Oats",
    time: 20,
    image: "assets/images/oats.jpg",
  ),
  RecipeItems(
    title: "Masala",
    time: 20,
    image: "assets/images/oats.jpg",
  ),
];
