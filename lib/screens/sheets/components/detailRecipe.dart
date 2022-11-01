import 'package:flutter/material.dart';
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
        title: Text(detailRecipeItems.title),
        backgroundColor: Colors.black54,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(7.0),
          child: Center(
            child: Column(
              children: [
                Image.asset(detailRecipeItems.image),
                heading("Masala Oats Recipe"),
                const SizedBox(height: 20),
                Text(
                  detailRecipeItems.intro,
                  style: GoogleFonts.arimo(fontSize: 16, color: Colors.white70),
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
                        ingredient(Icons.cookie_sharp, "Prep Time",
                            "${detailRecipeItems.prep} mins"),
                        ingredient(Icons.cookie_sharp, "Cook Time",
                            "${detailRecipeItems.cook} mins"),
                        ingredient(Icons.cookie_sharp, "Recipe Services",
                            "${detailRecipeItems.services}"),
                        ingredient(
                            Icons.cookie_sharp, detailRecipeItems.stage, ""),
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
                      //   info("1 Cups Oats"),
                      // info("1 small Onion (Chopped)"),
                      // info("1 small Tomato (Chopped)"),
                      // info("2 tbsp Carrot (Chopped)"),
                      // info("2 Green Chillies"),
                      // info("2 tbsp Peas"),
                      // info("1/2 tsp Garam Masala"),
                      // info("to taste Red Chilli Powder"),
                      // info("1 tsp Turmeric Powder"),
                      // info("to taste Salt"),
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
                // info(
                //     "To begin with the recipe, take 1 cup of oats and roast them until crispy. Once done, keep aside."),
                // const Divider(color: Colors.grey),
                // info(
                //     "Heat ghee in a pan, add cumin seeds and let them splutter. Then add ginger-garlic paste and saute for a minute."),
                // const Divider(color: Colors.grey),
                // info(
                //     "Then add chopped onion and fry until translucent. Once done, add all the veggies and saute for 5-6 minutes."),
                // const Divider(color: Colors.grey),
                // info("Now add turmeric powder and salt. Mix well."),
                // const Divider(color: Colors.grey),
                // info(
                //     "Add garam masala, coriander powder, red chilli powder and mix again."),
                // const Divider(color: Colors.grey),
                // info("Pour water as required and then add roasted oats."),
                // const Divider(color: Colors.grey),
                // info("Cover for 5-6 minutes."),
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
                    child: Column(
                      children: [
                        heading("Key Ingredients:"),
                        Text(
                          detailRecipeItems.key,
                          style: GoogleFonts.arbutus(color: Colors.white),
                        )
                      ],
                    )),
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
    style: GoogleFonts.alata(
        fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
  );
}

ingredient(icon, title, time) {
  return Column(
    children: [
      Icon(icon, color: Colors.white),
      Text(
        title,
        style:
            GoogleFonts.abel(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      Text(time, style: GoogleFonts.abel(color: Colors.white)),
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
            style: GoogleFonts.alata(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    ),
  );
}
