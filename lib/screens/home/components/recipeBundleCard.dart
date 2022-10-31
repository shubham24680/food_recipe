import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/models/recipeBundle.dart';
import 'package:food_recipe/models/size_config.dart';
import 'package:food_recipe/screens/sheets/components/detailedrecipe.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeBundleCard extends StatelessWidget {
  final RecipeBundle recipeBundle;
  final Function press;
  const RecipeBundleCard(
      {super.key, required this.recipeBundle, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => recipeBundle.destination));
      },
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundle.color,
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 1.8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      recipeBundle.title,
                      style: GoogleFonts.staatliches(
                        fontSize: SizeConfig.defaultSize * 2.5,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: SizeConfig.defaultSize * 0.5),
                    Text(
                      recipeBundle.description,
                      style: GoogleFonts.comicNeue(
                        color: Colors.white60,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    buildInfo(SizeConfig.defaultSize, "assets/icons/pot.svg",
                        "${recipeBundle.recipes} Recipes"),
                    SizedBox(height: SizeConfig.defaultSize * 0.5),
                    buildInfo(SizeConfig.defaultSize, "assets/icons/chef.svg",
                        "${recipeBundle.chefs} Chefs"),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                recipeBundle.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            )
          ],
        ),
      ),
    );
  }
}

buildInfo(defaultSize, icon, info) {
  return Row(
    children: [
      SvgPicture.asset(icon),
      SizedBox(
        width: defaultSize,
      ),
      Text(
        info,
        style: GoogleFonts.darkerGrotesque(color: Colors.white, fontSize: 16),
      )
    ],
  );
}
