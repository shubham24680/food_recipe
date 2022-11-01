import 'package:flutter/material.dart';
import 'package:food_recipe/models/size_config.dart';
import 'package:food_recipe/screens/sheets/components/detailRecipe.dart';
import 'package:food_recipe/screens/sheets/components/detailRecipeItems.dart';
import 'package:food_recipe/screens/sheets/components/recipeCards.dart';
import 'recipeItems.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize),
              child: GridView.builder(
                itemCount: recipeItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1.65),
                itemBuilder: (context, index) => RecipeCard(
                    recipeItems: recipeItems[index],
                    index: index,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeScreen(
                            detailRecipeItems: detailRecipeItems[index],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
