import 'package:flutter/material.dart';
import 'package:food_recipe/components/navbar.dart';
import 'package:food_recipe/models/size_config.dart';
import 'package:food_recipe/screens/home/components/drawer.dart';
import 'package:food_recipe/screens/home/home_screen.dart';

import 'components/body.dart';

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      drawer: const DrawerScreen(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavbar(),
    );
  }
}
