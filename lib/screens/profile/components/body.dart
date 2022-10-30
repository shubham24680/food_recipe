import 'package:flutter/material.dart';
import 'package:food_recipe/models/size_config.dart';
import 'info.dart';
import 'menuItems.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Info(
            image: "assets/images/pic.png",
            name: "Tanjiro Kamado",
            email: "sunbreathing@gmail.com",
          ),
          SizedBox(height: SizeConfig.defaultSize * 2),
          ProfileMenuItem(
            image: "assets/icons/bookmark_fill.svg",
            name: "Saved Recipes",
            press: () {},
          ),
          ProfileMenuItem(
            image: "assets/icons/chef_color.svg",
            name: "Super Plan",
            press: () {},
          ),
          ProfileMenuItem(
            image: "assets/icons/language.svg",
            name: "Change Language",
            press: () {},
          ),
          ProfileMenuItem(
            image: "assets/icons/info.svg",
            name: "Help",
            press: () {},
          ),
        ],
      ),
    );
  }
}
