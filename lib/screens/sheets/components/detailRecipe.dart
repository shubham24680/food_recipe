import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/screens/sheets/components/detailRecipeItems.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeScreen extends StatelessWidget {
  final DetailRecipeItems detailRecipeItems;
  const RecipeScreen({super.key, required this.detailRecipeItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text(
          detailRecipeItems.title,
          style: GoogleFonts.staatliches(fontSize: 24),
        ),
        backgroundColor: Colors.black54,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(7.0),
          child: Center(
            child: Column(
              children: [
                Image.asset(detailRecipeItems.image),
                heading("${detailRecipeItems.title} Recipe"),
                const SizedBox(height: 20),
                Text(
                  detailRecipeItems.intro,
                  style: GoogleFonts.varelaRound(
                      fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ingredient("assets/icons/bowl.svg", "Prep Time",
                            "${detailRecipeItems.prep} mins"),
                        ingredient("assets/icons/pot.svg", "Cook Time",
                            "${detailRecipeItems.cook} mins"),
                        ingredient("assets/icons/serve.svg", "Recipe Services",
                            "${detailRecipeItems.services}"),
                        ingredient("assets/icons/smile.svg",
                            detailRecipeItems.stage, ""),
                      ]),
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heading("Ingredients of ${detailRecipeItems.title}"),
                      const SizedBox(height: 10),
                      for (int i = 0;
                          i < detailRecipeItems.ingredients.length;
                          i++)
                        info(detailRecipeItems.ingredients[i]),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                heading("How to Make ${detailRecipeItems.title}"),
                for (int i = 0; i < detailRecipeItems.info.length; i++)
                  Column(
                    children: [
                      const Divider(color: Colors.grey),
                      info(detailRecipeItems.info[i]),
                    ],
                  ),
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

heading(name) {
  return Text(
    name,
    style: GoogleFonts.alatsi(
        fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
  );
}

ingredient(icon, title, time) {
  return Column(
    children: [
      SvgPicture.asset(
        icon,
        color: Colors.white,
        width: 24,
      ),
      Text(
        title,
        style: GoogleFonts.darkerGrotesque(
            color: Colors.white, fontWeight: FontWeight.bold),
      ),
      Text(time, style: GoogleFonts.darkerGrotesque(color: Colors.white)),
    ],
  );
}

info(name) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.circle,
          color: Colors.white,
          size: 10,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            name,
            style: GoogleFonts.varelaRound(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    ),
  );
}
