import 'package:flutter/material.dart';
import 'package:food_recipe/models/recipeBundle.dart';
import 'package:food_recipe/models/size_config.dart';
import 'package:food_recipe/screens/home/components/recipeBundleCard.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          // const Categories(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize),
              child: GridView.builder(
                itemCount: recipeBundles.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  // SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  mainAxisSpacing: 20,
                  // crossAxisSpacing:
                  // SizeConfig.orientation == Orientation.landscape
                  //     ? SizeConfig.defaultSize * 2
                  //     : 0,
                  childAspectRatio: 1.65,
                ),
                itemBuilder: (context, index) => RecipeBundleCard(
                  recipeBundle: recipeBundles[index],
                  press: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) =>
                    //           recipeBundles[index].destination,
                    //     ));
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
