import 'package:flutter/material.dart';
import 'package:food_recipe/models/size_config.dart';
import 'package:food_recipe/screens/sheets/components/detailRecipeItems.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detailRecipe.dart';
import 'recipeItems.dart';

class RecipeCard extends StatelessWidget {
  final RecipeItems recipeItems;
  final Function press;
  final int index;
  const RecipeCard({
    super.key,
    required this.recipeItems,
    required this.press,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeScreen(
              detailRecipeItems: detailRecipeItems[index],
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize * 2,
            vertical: SizeConfig.defaultSize),
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 2),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(recipeItems.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              recipeItems.title,
              style: GoogleFonts.adventPro(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              " ${recipeItems.time} mins",
              style: GoogleFonts.adventPro(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
