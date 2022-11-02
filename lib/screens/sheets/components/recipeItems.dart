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
    title: "Kadhai Paneer",
    time: 45,
    image: "assets/images/paneer.jpg",
  ),
  RecipeItems(
    title: "Dark Chocolate Coffee",
    time: 25,
    image: "assets/images/coffee.jpg",
  ),
  RecipeItems(
    title: "Butter Chicken Biryani",
    time: 100,
    image: "assets/images/chicken.jpg",
  ),
  RecipeItems(
    title: "Masala Oats",
    time: 20,
    image: "assets/images/oats.jpg",
  ),
];
